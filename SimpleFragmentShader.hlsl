#version 330 core
// �A�E�g�v�b�g�f�[�^
out vec3 color;
// ���_�V�F�[�_���珑�����܂ꂽ�F
//in vec3 fragmentColor;
// ���_�V�F�[�_����̒l���������݂܂�
in vec2 UV;
// ���ׂẴ��b�V���ň��̒l
uniform sampler2D myTextureSampler;
void main() {
	//color = vec3(1, 0, 0);
	
	// �A�E�g�v�b�g�J���[ = ���_�V�F�[�_�Ŏw�肳�ꂽ�A
    // ���ӂ�3�̒��_�Ԃŏ������܂ꂽ�F
    //color = fragmentColor;
    
     // �A�E�g�v�b�g�J���[ = �w�肵��UV���W�̃e�N�X�`���̐F
    color = texture( myTextureSampler, UV ).rgb;
}