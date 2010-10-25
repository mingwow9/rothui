
  -- // rSetBackdrop
  -- // zork - 2010

  --get the addon namespace
  local addon, ns = ...
  
  --object container
  local cfg = CreateFrame("Frame") 
  
  cfg.frameList = {}
  
  -----------------------------
  -- CONFIG
  -----------------------------  
  
    cfg.framesUserplaced = true
    
    cfg.framesLocked = false
  
    cfg.frameList = {
      [1] = {
        pos       = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 0, y = 0 }, 
        size      = 64,
        bgFile    = "Interface\\AddOns\\rSetBackdrop\\tga\\background_flat",
        bgColor   = { r = 0.15, g = 0.15, b = 0.15, a = 0.8 },
        edgeFile  = "Interface\\AddOns\\rSetBackdrop\\tga\\glow",
        edgeColor   = { r = 0, g = 0, b = 0, a = 1 },
        tile      = false,
        tileSize  = 32, 
        edgeSize  = 10, 
        inset     = 10, 
        showsubframe = false,
        subframe  = {
          padding   = 10,
          bgFile    = "", 
          bgColor   = { r = 1, g = 1, b = 1, a = 0 },
          edgeFile  = "Interface\\AddOns\\rSetBackdrop\\tga\\tvtest_tooltip_border",
          edgeColor   = { r = 1, g = 1, b = 1, a = 1 },
          tile      = false,
          tileSize  = 16, 
          edgeSize  = 16, 
          inset     = 3,           
        },
        useicontexture = false,
      },
      [2] = {
        pos       = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 0, y = 0 }, 
        size      = 64,
        bgFile    = "Interface\\AddOns\\rSetBackdrop\\tga\\background_flat",
        bgColor   = { r = 0.15, g = 0.8, b = 1, a = 0.2 },
        edgeFile  = "Interface\\AddOns\\rSetBackdrop\\tga\\glow",
        edgeColor   = { r = 0, g = 0, b = 0, a = 1 },
        tile      = false,
        tileSize  = 32, 
        edgeSize  = 10, 
        inset     = 10, 
        showsubframe = true,
        subframe  = {
          padding   = 8,
          bgFile    = "Interface\\AddOns\\rSetBackdrop\\tga\\background_flat", 
          bgColor   = { r = 1, g = 1, b = 1, a = 0 },
          edgeFile  = "Interface\\AddOns\\rSetBackdrop\\tga\\diablo3_tooltip_border",
          edgeColor   = { r = 1, g = 1, b = 1, a = 1 },
          tile      = false,
          tileSize  = 16, 
          edgeSize  = 16, 
          inset     = 3,           
        },
        useicontexture = false,
      },
      [3] = {
        pos       = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 0, y = 0 }, 
        size      = 64,
        bgFile    = "Interface\\AddOns\\rSetBackdrop\\tga\\background_flat",
        bgColor   = { r = 0.15, g = 0.15, b = 0.15, a = 1 },
        edgeFile  = "Interface\\AddOns\\rSetBackdrop\\tga\\glow",
        edgeColor   = { r = 0, g = 0, b = 0, a = 1 },
        tile      = false,
        tileSize  = 32, 
        edgeSize  = 10, 
        inset     = 10, 
        showsubframe = true,
        subframe  = {
          padding   = 8,
          bgFile    = "Interface\\AddOns\\rSetBackdrop\\tga\\background_flat", 
          bgColor   = { r = 0.15, g = 0.8, b = 1, a = 0 },
          edgeFile  = "Interface\\AddOns\\rSetBackdrop\\tga\\diablo3_tooltip_border",
          edgeColor   = { r = 1, g = 1, b = 1, a = 1 },
          tile      = false,
          tileSize  = 16, 
          edgeSize  = 16, 
          inset     = 3,           
        },
        useicontexture = true,
      },
      [4] = {
        pos       = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 0, y = 0 }, 
        size      = 64,
        bgFile    = "Interface\\AddOns\\rSetBackdrop\\tga\\background_button",
        bgColor   = { r = 0.5, g = 0.5, b = 0.5, a = 0.8 },
        edgeFile  = "Interface\\AddOns\\rSetBackdrop\\tga\\glow",
        edgeColor   = { r = 0, g = 0, b = 0, a = 1 },
        tile      = false,
        tileSize  = 32, 
        edgeSize  = 10, 
        inset     = 10, 
        showsubframe = true,
        subframe  = {
          padding   = 8,
          bgFile    = "Interface\\AddOns\\rSetBackdrop\\tga\\background_flat", 
          bgColor   = { r = 0.15, g = 0.8, b = 1, a = 0 },
          edgeFile  = "Interface\\AddOns\\rSetBackdrop\\tga\\diablo3_tooltip_border",
          edgeColor   = { r = 1, g = 1, b = 1, a = 1 },
          tile      = false,
          tileSize  = 16, 
          edgeSize  = 16, 
          inset     = 3,           
        },
        useicontexture = false,
      },
      [5] = {
        pos       = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 0, y = 0 }, 
        size      = 64,
        bgFile    = "Interface\\AddOns\\rSetBackdrop\\tga\\background_flat",
        bgColor   = { r = 0.2, g = 0.2, b = 0.2, a = 0.6 },
        edgeFile  = "Interface\\AddOns\\rSetBackdrop\\tga\\tvtest_tooltip_border",
        edgeColor   = { r = 1, g = 1, b = 1, a = 1 },
        tile      = false,
        tileSize  = 32, 
        edgeSize  = 16, 
        inset     = 3, 
        showsubframe = false,
        subframe  = {
          padding   = 8,
          bgFile    = "Interface\\AddOns\\rSetBackdrop\\tga\\background_flat", 
          bgColor   = { r = 0.15, g = 0.8, b = 1, a = 0 },
          edgeFile  = "Interface\\AddOns\\rSetBackdrop\\tga\\diablo3_tooltip_border",
          edgeColor   = { r = 1, g = 1, b = 1, a = 1 },
          tile      = false,
          tileSize  = 16, 
          edgeSize  = 16, 
          inset     = 3,           
        },
        useicontexture = false,
      },
      [6] = {
        pos       = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 0, y = 0 }, 
        size      = 64,
        bgFile    = "Interface\\AddOns\\rSetBackdrop\\tga\\background_flat",
        bgColor   = { r = 0.15, g = 0.15, b = 0.15, a = 0.6 },
        edgeFile  = "Interface\\AddOns\\rSetBackdrop\\tga\\UI-Tooltip-Border",
        edgeColor   = { r = 1, g = 1, b = 1, a = 1 },
        tile      = false,
        tileSize  = 32, 
        edgeSize  = 16, 
        inset     = 3, 
        showsubframe = false,
        subframe  = {
          padding   = 8,
          bgFile    = "Interface\\AddOns\\rSetBackdrop\\tga\\background_flat", 
          bgColor   = { r = 0.15, g = 0.8, b = 1, a = 0 },
          edgeFile  = "Interface\\AddOns\\rSetBackdrop\\tga\\diablo3_tooltip_border",
          edgeColor   = { r = 1, g = 1, b = 1, a = 1 },
          tile      = false,
          tileSize  = 16, 
          edgeSize  = 16, 
          inset     = 3,           
        },
        useicontexture = false,
      },
      [7] = {
        pos       = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 0, y = 0 }, 
        size      = 64,
        bgFile    = "Interface\\AddOns\\rSetBackdrop\\tga\\background_flat",
        bgColor   = { r = 0.15, g = 0.8, b = 1, a = 0.2 },
        edgeFile  = "Interface\\AddOns\\rSetBackdrop\\tga\\glow",
        edgeColor   = { r = 0, g = 0, b = 0, a = 1 },
        tile      = false,
        tileSize  = 32, 
        edgeSize  = 10, 
        inset     = 10, 
        showsubframe = true,
        subframe  = {
          padding   = 8,
          bgFile    = "Interface\\AddOns\\rSetBackdrop\\tga\\background_flat", 
          bgColor   = { r = 1, g = 1, b = 1, a = 0 },
          edgeFile  = "Interface\\AddOns\\rSetBackdrop\\tga\\diablo3_tooltip_border",
          edgeColor   = { r = 0.8, g = 0, b = 0, a = 1 },
          tile      = false,
          tileSize  = 16, 
          edgeSize  = 16, 
          inset     = 3,           
        },
        useicontexture = false,
      },
    }
  
  -----------------------------
  -- HANDOVER
  -----------------------------
  
  --object container to addon namespace
  ns.cfg = cfg