function []=Automaton(A,B,C,L)

% A ���ξ��������ϰ����ֵΪ99999������Ϊ0
% B ���ܳ��ֲ�ͼ
% C ��Ա���󣺳�ʼʱ��Ա�ķֲ��������˵�����Ϊ99999������Ϊ0
human = 99999;
for g=1:500
    pause(0.1);
    % 200�ο϶����Խ��������Գ�����while�����������ˡ���
%imshow(max(A,C)==0,'InitialMagnification','fit')%ȡ������Ϊ��Ա�ڽ��ҵķֲ����Լ����������������ϰ���ͼ��
Graph=255*ones(size(A,1),size(A,2),3);
for ID1=1:size(A,1)
    for ID2=1:size(A,2)
        if A(ID1,ID2)==99999
           Graph(ID1,ID2,1)=0;
           Graph(ID1,ID2,2)=0;
           Graph(ID1,ID2,3)=0;
        elseif C(ID1,ID2)==99999
           Graph(ID1,ID2,1)=0;
           Graph(ID1,ID2,2)=0;
           Graph(ID1,ID2,3)=255; 
        end
    end
end
imshow(Graph,'InitialMagnification','fit')

% �������������Ϊ�˵���ͼ��Ĵ�С
% pause(0.1);
C(find(L(:,:)==1))=0;
%�������ҵ���Աʱ�䲽����
C=choic(B,C,human);

end