#version 330 core
// ���ׂẴ��b�V���ň��̒l
uniform mat4 MVP;

// �C���v�b�g���_�f�[�^�B���̃V�F�[�_�̎��s���ƂɈقȂ�܂��B
layout(location = 0) in vec3 vertexPosition_modelspace;
//layout(location = 1) in vec3 vertexColor;
layout(location = 1) in vec2 vertexUV;

// �A�E�g�v�b�g�f�[�^�B�e���_�ɏ������܂�܂��B
//out vec3 fragmentColor;
out vec2 UV;
void main(){

    // �N���b�v��Ԃł́A���_�̃A�E�g�v�b�g�ʒu�FMVP * �ʒu
    vec4 v = vec4(vertexPosition_modelspace,1); // ����4D�x�N�g���ɕϊ����܂��B�o���Ă��܂����H
    gl_Position = MVP * v;
    
    // �e�t���O�����g�̐F����邽�߂�
    // �e���_�̐F�͏������܂�܂��B
    //fragmentColor = vertexColor;
    
    // ���_��UV���W�ł��B���ʂȋ�Ԃ͂���܂���B
    UV = vertexUV;
    
   //gl_Position.xyz = vertexPosition_modelspace;
	//gl_Position.w = 1.0;
}
