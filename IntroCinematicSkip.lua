-- Create a frame to handle events
-- Addons need a frame to register for events, even if it's invisible.
local INTRO_CINEMATIC_ID = 1028
local frame = CreateFrame("Frame", "IntroCinematicSkipAddonFrame")

frame:RegisterEvent("PLAY_MOVIE")

frame:SetScript("OnEvent", function(self, event, ...)
    -- Check which event fired
    if event == "PLAY_MOVIE" then
        local movieID = ...
        if movieID == INTRO_CINEMATIC_ID then
            CinematicFinished(Enum.CinematicType.GameMovie, true);
            MovieFrame:Hide()
            print("|c00FFFF00[|cFFDD70DDIntroCinematicSkip|c00FFFF00]:|cFF00FF00 Skipped intro cinematic")
        end
        -- Print the message to the default chat frame with a prefix
    end
end)