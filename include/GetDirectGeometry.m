%% GetDirectGeometryFunction
%inputs: 
% - q : links current position ; 
% - biTri : vector of matrices containing the transformation matrices of link <i> w.r.t. link <i-1> for q=0. The size of biTri is (4,4,numberOfLinks)];
% - linkType: vector of size numberOfLinks identifying the joint type: 0 for revolute, 1 for
% prismatic.
% outputs:
% - biTei: vector of matrices containing the transformation matrices of link <i> w.r.t. link <i-1> for the input q. The
% size of biTei is equal to (4,4,numberOfLinks).

function [biTei] = GetDirectGeometry(q, biTri, linkType)
    %TODO
        biTei(1,1)=biTri(1,1,1);biTei(1,2)= biTri(1,2,1); biTri(1,3)=biTri(1,3,1); biTei(1,4)=biTri(1,4,1);
        biTei(2,1)=biTri(2,1,1);biTei(2,2)= biTri(2,2,1); biTri(2,3)=biTri(2,3,1); biTei(2,4)=biTri(2,4,1);
        biTei(3,1)=biTri(3,1,1);biTei(3,2)= biTri(3,2,1); biTri(3,3)=biTri(3,3,1); biTei(3,4)=biTri(3,4,1);
        biTei(4,1)=biTri(4,1,1);biTei(4,2)= biTri(4,2,1); biTri(4,3)=biTri(4,3,1); biTei(4,4)=biTri(4,4,1);
    for i=2:q
        biTeismall(1,1)=biTri(1,1,q);biTeismall(1,2)= biTri(1,2,q); biTeismall(1,3)=biTri(1,3,q); biTeismall(1,4)=biTri(1,4,q);
        biTeismall(2,1)=biTri(2,1,q);biTeismall(2,2)= biTri(2,2,q); biTeismall(2,3)=biTri(2,3,q); biTeismall(2,4)=biTri(2,4,q);
        biTeismall(3,1)=biTri(3,1,q);biTeismall(3,2)= biTri(3,2,q); biTeismall(3,3)=biTri(3,3,q); biTeismall(3,4)=biTri(3,4,q);
        biTeismall(4,1)=biTri(4,1,q);biTeismall(4,2)= biTri(4,2,q); biTeismall(4,3)=biTri(4,3,q); biTeismall(4,4)=biTri(4,4,q);
        biTei=biTei*biTeismall;
    end
end