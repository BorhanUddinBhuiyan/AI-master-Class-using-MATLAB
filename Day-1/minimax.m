function [mmr, mmm] = minimax( M )
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
mmr= (max(M.')-min(M.'));
mmm= max(max(M))-min(min(M));

end
