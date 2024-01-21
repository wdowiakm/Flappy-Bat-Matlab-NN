function score = RunGame
    FPS = 60;
    dt = 1/FPS;

    % Initialize the game
    gameModel = FlappyBatGameModel(FPS);
    gameView = FlappyBatGameView();
    gameController = FlappyBatGameController();

    gameView.render(gameModel);
    pause;

    % Main game loop
    while gameModel.IsRunning
        tic;
        
        gameController.processInput(gameModel);
        gameModel.update(dt);
        gameView.render(gameModel);
        
        frameTime = toc;

        % Pause to maintain FPS
        lag = max(0, dt - frameTime);
        pause(lag/2);
    end

    score = gameModel.score;
end
