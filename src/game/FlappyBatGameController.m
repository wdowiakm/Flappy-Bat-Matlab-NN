classdef FlappyBatGameController < handle

    properties (Access = private)
        LastKeyPressed (1,1) string = "none"
    end

    methods (Access = public)
        % Constructor
        function this = FlappyBatGameController()
        end

        function getKeyPressed(this, handleSource, keyData)
            this.LastKeyPressed = keyData.Key;
        end

        function processInput(this, gameModel)
        end
    end
end