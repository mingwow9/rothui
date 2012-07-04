
  -----------------------------
  -- INIT
  -----------------------------

  --get the addon namespace
  local addon, ns = ...
  local gcfg = ns.cfg
  --get some values from the namespace
  local cfg = gcfg.bars.stancebar
  local dragFrameList = ns.dragFrameList

  -----------------------------
  -- FUNCTIONS
  -----------------------------

  if not cfg.enable then return end

  local num = NUM_STANCE_SLOTS
  local buttonList = {}

  for i=1, num do
    table.insert(buttonList, _G["StanceButton"..i]) --add the button object to the list
  end

  --make a frame that fits the size of all microbuttons
  local frame = CreateFrame("Frame", "rABS_StanceBar", UIParent, "SecureHandlerStateTemplate")
  frame:SetWidth(num*cfg.buttons.size + (num-1)*cfg.buttons.margin + 2*cfg.padding)
  frame:SetHeight(cfg.buttons.size + 2*cfg.padding)
  frame:SetPoint(cfg.pos.a1,cfg.pos.af,cfg.pos.a2,cfg.pos.x,cfg.pos.y)
  frame:SetScale(cfg.scale)

  --move the buttons into position and reparent them
  StanceBarFrame:SetParent(frame)
  StanceBarFrame:EnableMouse(false)
  --remove the default background texture
  StanceBarLeft:SetTexture(nil)
  StanceBarMiddle:SetTexture(nil)
  StanceBarRight:SetTexture(nil)

  for i=1, num do
    local button = _G["StanceButton"..i]
    local name = button:GetName()
    button:SetSize(cfg.buttons.size, cfg.buttons.size)
    button:ClearAllPoints()
    if i == 1 then
      button:SetPoint("LEFT", frame, cfg.padding, 0)
    else
      local previous = _G["StanceButton"..i-1]
      button:SetPoint("LEFT", previous, "RIGHT", cfg.buttons.margin, 0)
    end
    --normal texture hack
    local nt  = _G[name.."NormalTexture2"]
    nt:ClearAllPoints()
    nt:SetPoint("TOPLEFT",button,-9,9)
    nt:SetPoint("BOTTOMRIGHT",button,9,-9)
  end

  local function fixStannceButton1(self,a1,af,a2,x,y)
    if af == "StanceBarFrame" then
      print("fixing stanceButton1, it was moved")
      StanceButton1:SetPoint("BOTTOMLEFT", frame, cfg.padding, cfg.padding)
    end
  end
  hooksecurefunc(StanceButton1, "SetPoint", fixStannceButton1)

  --create drag frame and drag functionality
  if cfg.userplaced.enable then
    rCreateDragFrame(frame, dragFrameList, -2 , true) --frame, dragFrameList, inset, clamp
  end

  --create the mouseover functionality
  if cfg.mouseover.enable then
    rButtonBarFader(frame, buttonList, cfg.mouseover.fadeIn, cfg.mouseover.fadeOut) --frame, buttonList, fadeIn, fadeOut
  end