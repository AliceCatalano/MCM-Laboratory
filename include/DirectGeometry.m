%% DirectGeometry Function 
% inputs: 
% - q : current links position;
% - biTri: transformation matrix of link <i> w.r.t. link <i-1> for qi=0; 
% - jointType: 0 for revolute, 1 for prismatic;
% output:
% biTei : transformation matrix of link <i> w.r.t. link <i-1> for the input qi.

function biTei = DirectGeometry(qi, biTri, linkType)
    %TODO
    biTei(1,1)=biTri(1,1,qi);biTei(1,2)= biTri(1,2,qi); biTei(1,3)=biTri(1,3,qi); biTei(1,4)=biTri(1,4,qi);
    biTei(2,1)=biTri(2,1,qi);biTei(2,2)= biTri(2,2,qi); biTei(2,3)=biTri(2,3,qi); biTei(2,4)=biTri(2,4,qi);
    biTei(3,1)=biTri(3,1,qi);biTei(3,2)= biTri(3,2,qi); biTei(3,3)=biTri(3,3,qi); biTei(3,4)=biTri(3,4,qi);
    biTei(4,1)=biTri(4,1,qi);biTei(4,2)= biTri(4,2,qi); biTei(4,3)=biTri(4,3,qi); biTei(4,4)=biTri(4,4,qi);
end