classdef FlappyBatGameModel < handle

    properties (Access = public)
        Bat             (1,1) BatModel      = BatModel()
        Fps             (1,1) double        = 60
        ObstacleList    (1,:) ObstacleModel
        Score           (1,1) uint16        = 0
        FrameCount      (1,1) uint16        = 1
        IsRunning       (1,1) logical       = true
    end

    methods (Access = public)
        % Constructor
        function this = FlappyBatGameModel(fps)
            this.Fps = fps;
        end

        function update(this)
        end


    end

end