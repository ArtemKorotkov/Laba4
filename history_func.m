function [state, options, optchanged] = history_func(options, state, flag)

persistent cost

persistent history 

optchanged = false;


switch flag

    case {'iter','interrupt'}
        
        ss = size(history,3);
        history(:,:,ss+1) = state.Population;
        cost(:,ss+1) = state.Score;
        
     case 'init'

        history(:,:,1) = state.Population;
        cost(:,1) = state.Score;

    case 'done'
        save history.mat history cost
end