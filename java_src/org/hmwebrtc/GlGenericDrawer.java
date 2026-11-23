package org.hmwebrtc;

import android.opengl.GLES20;
import androidx.annotation.Nullable;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import org.webrtc.haima.camerarecorder.egl.GlPreview;

/* JADX INFO: loaded from: classes10.dex */
class GlGenericDrawer implements RendererCommon.GlDrawer {
    private static final String BRIGHTNESS_NAME = "brightness";
    private static final String CONTRAST_NAME = "contrast";
    private static final String DEFAULT_VERTEX_SHADER_STRING = "varying vec2 tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\nuniform mat4 tex_mat;\nvoid main() {\n  gl_Position = in_pos;\n  tc = (tex_mat * in_tc).xy;\n}\n";
    private static final FloatBuffer FULL_RECTANGLE_BUFFER = GlUtil.createFloatBuffer(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f});
    private static final FloatBuffer FULL_RECTANGLE_TEXTURE_BUFFER = GlUtil.createFloatBuffer(new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f});
    private static final String INPUT_TEXTURE_COORDINATE_NAME = "in_tc";
    private static final String INPUT_VERTEX_COORDINATE_NAME = "in_pos";
    private static final String SATURATION_NAME = "saturation";
    private static final String TAG = "GlGenericDrawer";
    private static final String TEXTURE_MATRIX_NAME = "tex_mat";
    private static final String TEXTURE_SIZE_NAME = "textureSize";
    private static final String UNSHARP_MASK_AMOUNT_NAME = "unsharpAmount";
    private static final String UNSHARP_MASK_THRESHOLD_NAME = "unsharpThreshold";
    private int brightnessLocation;
    private float brightnessRatio;
    private float brightnessRatioOfCloud;
    private int contrastLocation;
    private float contrastRatio;
    private float contrastRatioOfCloud;
    private boolean currentBlackWhiteDisplay;

    @Nullable
    private GlShader currentShader;

    @Nullable
    private ShaderType currentShaderType;
    private boolean enableBlackWhiteDisplay;
    private final String genericFragmentSource;
    private boolean imageAdjustable;
    private boolean imageAdjustableOfCloud;
    private int inPosLocation;
    private int inTcLocation;
    private float lastBrightnessRatio;
    private float lastContrastRatio;
    private boolean lastImageAdjustable;
    private float lastSaturationRatio;
    private float lastUnsharpAmount;
    private boolean lastUnsharpMarkStatus;
    private float lastUnsharpThreshold;
    private int saturationLocation;
    private float saturationRatio;
    private float saturationRatioOfCloud;
    private final ShaderCallbacks shaderCallbacks;
    private int texMatrixLocation;
    private int textureSizeLocation;
    private float unsharpAmount;
    private int unsharpAmountLocation;
    private boolean unsharpMarkStatus;
    private float unsharpThreshold;
    private int unsharpThresholdLocation;
    private boolean useOptimizedUnsharpMask;
    private final String vertexShader;

    public interface ShaderCallbacks {
        void onNewShader(GlShader glShader);

        void onPrepareShader(GlShader glShader, float[] fArr, int i10, int i11, int i12, int i13);
    }

    public enum ShaderType {
        OES,
        RGB,
        YUV
    }

    public GlGenericDrawer(String str, ShaderCallbacks shaderCallbacks) {
        this(DEFAULT_VERTEX_SHADER_STRING, str, shaderCallbacks);
    }

    static String createFragmentShaderString(String str, ShaderType shaderType, RendererCommon.GlDrawer glDrawer) {
        StringBuilder sb2 = new StringBuilder();
        ShaderType shaderType2 = ShaderType.OES;
        if (shaderType == shaderType2) {
            sb2.append("#extension GL_OES_EGL_image_external : require\n");
        }
        sb2.append("precision mediump float;\n");
        sb2.append("varying vec2 tc;\n");
        if (glDrawer.getImageAdjustable()) {
            sb2.append("uniform mediump float contrast;\n");
            sb2.append("uniform mediump float brightness;\n");
            sb2.append("uniform mediump float saturation;\n");
            sb2.append("const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);");
        }
        if (shaderType == ShaderType.YUV) {
            sb2.append("uniform sampler2D y_tex;\n");
            sb2.append("uniform sampler2D u_tex;\n");
            sb2.append("uniform sampler2D v_tex;\n");
            sb2.append("vec4 sample(vec2 p) {\n");
            sb2.append("  float y = texture2D(y_tex, p).r * 1.16438;\n");
            sb2.append("  float u = texture2D(u_tex, p).r;\n");
            sb2.append("  float v = texture2D(v_tex, p).r;\n");
            if (glDrawer.getImageAdjustable()) {
                sb2.append("  vec4 textureColor = vec4((y + 1.59603 * v - 0.874202),\n");
                sb2.append("    (y - 0.391762 * u - 0.812968 * v + 0.531668),\n");
                sb2.append("    (y + 2.01723 * u - 1.08563), 1);\n");
                sb2.append("  textureColor = vec4((textureColor.r - 0.5) * contrast + 0.5,\n");
                sb2.append("    (textureColor.g - 0.5) * contrast + 0.5,\n");
                sb2.append("    (textureColor.b - 0.5) * contrast + 0.5,\n");
                sb2.append("    textureColor.a);\n");
                sb2.append("  textureColor = vec4(textureColor.r + brightness, textureColor.g + brightness, textureColor.b + brightness, textureColor.a);\n");
                sb2.append("  lowp float luminance = dot(textureColor.rgb, luminanceWeighting);\n");
                sb2.append("  lowp vec3 greyScaleColor = vec3(luminance);\n");
                sb2.append("  textureColor = vec4(mix(greyScaleColor, textureColor.rgb, saturation), textureColor.w);\n");
                sb2.append("  return textureColor;\n");
            } else {
                sb2.append("  return vec4(y + 1.59603 * v - 0.874202,\n");
                sb2.append("    y - 0.391762 * u - 0.812968 * v + 0.531668,\n");
                sb2.append("    y + 2.01723 * u - 1.08563, 1);\n");
            }
            sb2.append("}\n");
            sb2.append(str);
        } else {
            String str2 = shaderType == shaderType2 ? "samplerExternalOES" : "sampler2D";
            sb2.append("uniform ");
            sb2.append(str2);
            sb2.append(" tex;\n");
            if (glDrawer.getImageAdjustable()) {
                sb2.append("void main() {\n");
                sb2.append("  highp vec4 textureColor = texture2D(tex, tc);\n");
                sb2.append("  textureColor = vec4((textureColor.r - 0.5) * contrast + 0.5, \n");
                sb2.append("    (textureColor.g - 0.5) * contrast + 0.5, \n");
                sb2.append("    (textureColor.b - 0.5) * contrast + 0.5, \n");
                sb2.append("    textureColor.a);\n");
                sb2.append("  textureColor = vec4(textureColor.r + brightness, textureColor.g + brightness, textureColor.b + brightness, textureColor.a); \n");
                sb2.append("  lowp float luminance = dot(textureColor.rgb, luminanceWeighting);\n");
                sb2.append("  lowp vec3 greyScaleColor = vec3(luminance);\n");
                sb2.append("  textureColor = vec4(mix(greyScaleColor, textureColor.rgb, saturation), textureColor.w);\n");
                sb2.append("  gl_FragColor = textureColor;\n");
                sb2.append("}\n");
            } else {
                sb2.append(str.replace("sample(", "texture2D(tex, "));
            }
        }
        return sb2.toString();
    }

    static String createFragmentShaderStringForBlackWhiteDisplay(String str, ShaderType shaderType, RendererCommon.GlDrawer glDrawer) {
        StringBuilder sb2 = new StringBuilder();
        ShaderType shaderType2 = ShaderType.OES;
        if (shaderType == shaderType2) {
            sb2.append("#extension GL_OES_EGL_image_external : require\n");
        }
        sb2.append("precision mediump float;\n");
        sb2.append("varying vec2 tc;\n");
        if (shaderType == ShaderType.YUV) {
            sb2.append("uniform sampler2D y_tex;\n");
            sb2.append("void main() {\n");
            sb2.append("  float luminance = texture2D(y_tex, tc).r;\n");
            sb2.append("  gl_FragColor = vec4(vec3(luminance), 1);\n");
            sb2.append("}\n");
        } else {
            String str2 = shaderType == shaderType2 ? "samplerExternalOES" : "sampler2D";
            sb2.append("uniform ");
            sb2.append(str2);
            sb2.append(" tex;\n");
            sb2.append("const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);");
            sb2.append("void main() {\n");
            sb2.append("  highp vec4 textureColor = texture2D(tex, tc);\n");
            sb2.append("  float luminance = dot(textureColor.rgb, luminanceWeighting);\n");
            sb2.append("  gl_FragColor = vec4(vec3(luminance), textureColor.w);\n");
            sb2.append("}\n");
        }
        return sb2.toString();
    }

    static String createFragmentShaderStringForUnsharpMask(String str, ShaderType shaderType, RendererCommon.GlDrawer glDrawer) {
        StringBuilder sb2 = new StringBuilder();
        ShaderType shaderType2 = ShaderType.OES;
        if (shaderType == shaderType2) {
            sb2.append("#extension GL_OES_EGL_image_external : require\n");
        }
        sb2.append("precision mediump float;\n");
        sb2.append("varying vec2 tc;\n");
        sb2.append("uniform mediump float unsharpAmount;\n");
        sb2.append("uniform mediump float unsharpThreshold;\n");
        sb2.append("uniform mediump vec2 textureSize;\n");
        sb2.append("const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);");
        if (shaderType == ShaderType.YUV) {
            sb2.append("uniform sampler2D y_tex;\n");
            sb2.append("uniform sampler2D u_tex;\n");
            sb2.append("uniform sampler2D v_tex;\n");
            sb2.append("vec4 applyUnsharpMaskYUV(vec2 coord) {\n");
            sb2.append("  // Convert YUV to RGB first\n");
            sb2.append("  float y = texture2D(y_tex, coord).r * 1.16438;\n");
            sb2.append("  float u = texture2D(u_tex, coord).r;\n");
            sb2.append("  float v = texture2D(v_tex, coord).r;\n");
            sb2.append("  vec4 originalColor = vec4((y + 1.59603 * v - 0.874202),\n");
            sb2.append("    (y - 0.391762 * u - 0.812968 * v + 0.531668),\n");
            sb2.append("    (y + 2.01723 * u - 1.08563), 1);\n");
            sb2.append("  \n");
            sb2.append("  // Calculate blur using 7x7 Gaussian kernel for better anti-aliasing\n");
            sb2.append("  vec2 texelSize = 1.0 / textureSize;\n");
            sb2.append("  vec4 blurColor = vec4(0.0);\n");
            sb2.append("  \n");
            sb2.append("  // 7x7 Gaussian blur kernel weights\n");
            sb2.append("  float kernel[49];\n");
            sb2.append("  // Row 0\n");
            sb2.append("  kernel[0] = 0.00000067; kernel[1] = 0.00002292; kernel[2] = 0.00019117; kernel[3] = 0.00038771; kernel[4] = 0.00019117; kernel[5] = 0.00002292; kernel[6] = 0.00000067;\n");
            sb2.append("  // Row 1\n");
            sb2.append("  kernel[7] = 0.00002292; kernel[8] = 0.00078634; kernel[9] = 0.00655965; kernel[10] = 0.01330373; kernel[11] = 0.00655965; kernel[12] = 0.00078634; kernel[13] = 0.00002292;\n");
            sb2.append("  // Row 2\n");
            sb2.append("  kernel[14] = 0.00019117; kernel[15] = 0.00655965; kernel[16] = 0.05472157; kernel[17] = 0.11098164; kernel[18] = 0.05472157; kernel[19] = 0.00655965; kernel[20] = 0.00019117;\n");
            sb2.append("  // Row 3 (center row)\n");
            sb2.append("  kernel[21] = 0.00038771; kernel[22] = 0.01330373; kernel[23] = 0.11098164; kernel[24] = 0.22508352; kernel[25] = 0.11098164; kernel[26] = 0.01330373; kernel[27] = 0.00038771;\n");
            sb2.append("  // Row 4\n");
            sb2.append("  kernel[28] = 0.00019117; kernel[29] = 0.00655965; kernel[30] = 0.05472157; kernel[31] = 0.11098164; kernel[32] = 0.05472157; kernel[33] = 0.00655965; kernel[34] = 0.00019117;\n");
            sb2.append("  // Row 5\n");
            sb2.append("  kernel[35] = 0.00002292; kernel[36] = 0.00078634; kernel[37] = 0.00655965; kernel[38] = 0.01330373; kernel[39] = 0.00655965; kernel[40] = 0.00078634; kernel[41] = 0.00002292;\n");
            sb2.append("  // Row 6\n");
            sb2.append("  kernel[42] = 0.00000067; kernel[43] = 0.00002292; kernel[44] = 0.00019117; kernel[45] = 0.00038771; kernel[46] = 0.00019117; kernel[47] = 0.00002292; kernel[48] = 0.00000067;\n");
            sb2.append("  \n");
            sb2.append("  // Apply blur with 7x7 kernel\n");
            sb2.append("  for(int i = 0; i < 7; i++) {\n");
            sb2.append("    for(int j = 0; j < 7; j++) {\n");
            sb2.append("      vec2 offset = vec2(float(i-3), float(j-3)) * texelSize;\n");
            sb2.append("      float y_blur = texture2D(y_tex, coord + offset).r * 1.16438;\n");
            sb2.append("      float u_blur = texture2D(u_tex, coord + offset).r;\n");
            sb2.append("      float v_blur = texture2D(v_tex, coord + offset).r;\n");
            sb2.append("      vec4 sampleColor = vec4((y_blur + 1.59603 * v_blur - 0.874202),\n");
            sb2.append("        (y_blur - 0.391762 * u_blur - 0.812968 * v_blur + 0.531668),\n");
            sb2.append("        (y_blur + 2.01723 * u_blur - 1.08563), 1);\n");
            sb2.append("      blurColor += sampleColor * kernel[i*7+j];\n");
            sb2.append("    }\n");
            sb2.append("  }\n");
            sb2.append("  \n");
            sb2.append("  // Calculate unsharp mask\n");
            sb2.append("  vec4 mask = originalColor - blurColor;\n");
            sb2.append("  float maskLuminance = dot(mask.rgb, luminanceWeighting);\n");
            sb2.append("  \n");
            sb2.append("  // Apply threshold\n");
            sb2.append("  float t = step(unsharpThreshold, abs(maskLuminance));\n");
            sb2.append("  \n");
            sb2.append("  // Apply unsharp mask\n");
            sb2.append("  vec4 result = mix(originalColor, clamp(originalColor + mask * unsharpAmount, 0.0, 1.0), t);\n");
            sb2.append("  return result;\n");
            sb2.append("}\n");
            sb2.append("\n");
            sb2.append("void main() {\n");
            sb2.append("  vec4 textureColor = applyUnsharpMaskYUV(tc);\n");
            sb2.append("  gl_FragColor = textureColor;\n");
            sb2.append("}\n");
        } else {
            String str2 = shaderType == shaderType2 ? "samplerExternalOES" : "sampler2D";
            sb2.append("uniform ");
            sb2.append(str2);
            sb2.append(" tex;\n");
            sb2.append("vec4 applyUnsharpMask(vec2 coord) {\n");
            sb2.append("  vec4 originalColor = texture2D(tex, coord);\n");
            sb2.append("  \n");
            sb2.append("  // Calculate blur using 7x7 Gaussian kernel for better anti-aliasing\n");
            sb2.append("  vec2 texelSize = 1.0 / textureSize;\n");
            sb2.append("  vec4 blurColor = vec4(0.0);\n");
            sb2.append("  \n");
            sb2.append("  // 7x7 Gaussian blur kernel weights\n");
            sb2.append("  float kernel[49];\n");
            sb2.append("  // Row 0\n");
            sb2.append("  kernel[0] = 0.00000067; kernel[1] = 0.00002292; kernel[2] = 0.00019117; kernel[3] = 0.00038771; kernel[4] = 0.00019117; kernel[5] = 0.00002292; kernel[6] = 0.00000067;\n");
            sb2.append("  // Row 1\n");
            sb2.append("  kernel[7] = 0.00002292; kernel[8] = 0.00078634; kernel[9] = 0.00655965; kernel[10] = 0.01330373; kernel[11] = 0.00655965; kernel[12] = 0.00078634; kernel[13] = 0.00002292;\n");
            sb2.append("  // Row 2\n");
            sb2.append("  kernel[14] = 0.00019117; kernel[15] = 0.00655965; kernel[16] = 0.05472157; kernel[17] = 0.11098164; kernel[18] = 0.05472157; kernel[19] = 0.00655965; kernel[20] = 0.00019117;\n");
            sb2.append("  // Row 3 (center row)\n");
            sb2.append("  kernel[21] = 0.00038771; kernel[22] = 0.01330373; kernel[23] = 0.11098164; kernel[24] = 0.22508352; kernel[25] = 0.11098164; kernel[26] = 0.01330373; kernel[27] = 0.00038771;\n");
            sb2.append("  // Row 4\n");
            sb2.append("  kernel[28] = 0.00019117; kernel[29] = 0.00655965; kernel[30] = 0.05472157; kernel[31] = 0.11098164; kernel[32] = 0.05472157; kernel[33] = 0.00655965; kernel[34] = 0.00019117;\n");
            sb2.append("  // Row 5\n");
            sb2.append("  kernel[35] = 0.00002292; kernel[36] = 0.00078634; kernel[37] = 0.00655965; kernel[38] = 0.01330373; kernel[39] = 0.00655965; kernel[40] = 0.00078634; kernel[41] = 0.00002292;\n");
            sb2.append("  // Row 6\n");
            sb2.append("  kernel[42] = 0.00000067; kernel[43] = 0.00002292; kernel[44] = 0.00019117; kernel[45] = 0.00038771; kernel[46] = 0.00019117; kernel[47] = 0.00002292; kernel[48] = 0.00000067;\n");
            sb2.append("  \n");
            sb2.append("  // Apply blur with 7x7 kernel\n");
            sb2.append("  for(int i = 0; i < 7; i++) {\n");
            sb2.append("    for(int j = 0; j < 7; j++) {\n");
            sb2.append("      vec2 offset = vec2(float(i-3), float(j-3)) * texelSize;\n");
            sb2.append("      blurColor += texture2D(tex, coord + offset) * kernel[i*7+j];\n");
            sb2.append("    }\n");
            sb2.append("  }\n");
            sb2.append("  \n");
            sb2.append("  // Calculate unsharp mask\n");
            sb2.append("  vec4 mask = originalColor - blurColor;\n");
            sb2.append("  float maskLuminance = dot(mask.rgb, luminanceWeighting);\n");
            sb2.append("  \n");
            sb2.append("  // Apply threshold\n");
            sb2.append("  float t = step(unsharpThreshold, abs(maskLuminance));\n");
            sb2.append("  \n");
            sb2.append("  // Apply unsharp mask\n");
            sb2.append("  vec4 result = mix(originalColor, clamp(originalColor + mask * unsharpAmount, 0.0, 1.0), t);\n");
            sb2.append("  return result;\n");
            sb2.append("}\n");
            sb2.append("\n");
            sb2.append("void main() {\n");
            sb2.append("  highp vec4 textureColor = applyUnsharpMask(tc);\n");
            sb2.append("  gl_FragColor = textureColor;\n");
            sb2.append("}\n");
        }
        return sb2.toString();
    }

    static String createFragmentShaderStringForUnsharpMaskOptimized(String str, ShaderType shaderType, RendererCommon.GlDrawer glDrawer) {
        StringBuilder sb2 = new StringBuilder();
        ShaderType shaderType2 = ShaderType.OES;
        if (shaderType == shaderType2) {
            sb2.append("#extension GL_OES_EGL_image_external : require\n");
        }
        sb2.append("precision mediump float;\n");
        sb2.append("varying vec2 tc;\n");
        sb2.append("uniform mediump float unsharpAmount;\n");
        sb2.append("uniform mediump float unsharpThreshold;\n");
        sb2.append("uniform mediump vec2 textureSize;\n");
        sb2.append("const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\n");
        if (shaderType == shaderType2) {
            sb2.append("const mediump float centerWeight = 0.52;\n");
            sb2.append("const mediump float enhanceBoost = 1.8;\n");
            sb2.append("uniform samplerExternalOES tex;\n");
            sb2.append("vec4 applyUnsharpMaskEnhancedOES(vec2 coord) {\n");
            sb2.append("  vec4 originalColor = texture2D(tex, coord);\n");
            sb2.append("  vec2 offset = 1.0 / textureSize;\n");
            sb2.append("  \n");
            sb2.append("  // 明显对角线采样 - 增强锐化对比度\n");
            sb2.append("  vec4 diag1 = texture2D(tex, coord + vec2(-offset.x, -offset.y)) + texture2D(tex, coord + vec2(offset.x, offset.y));\n");
            sb2.append("  vec4 diag2 = texture2D(tex, coord + vec2(-offset.x, offset.y)) + texture2D(tex, coord + vec2(offset.x, -offset.y));\n");
            sb2.append("  \n");
            sb2.append("  // 明显模糊计算 - 增强锐化对比\n");
            sb2.append("  vec4 cornerAvg = (diag1 + diag2) * 0.25;\n");
            sb2.append("  vec4 blurColor = originalColor * centerWeight + cornerAvg * (1.0 - centerWeight);\n");
            sb2.append("  \n");
            sb2.append("  // 明显增强计算 - 显著提升锐化强度\n");
            sb2.append("  vec4 mask = originalColor - blurColor;\n");
            sb2.append("  float maskIntensity = dot(abs(mask.rgb), luminanceWeighting);\n");
            sb2.append("  \n");
            sb2.append("  // 较低阈值 - 更多区域被增强\n");
            sb2.append("  float threshold = smoothstep(unsharpThreshold * 0.3, unsharpThreshold + 0.04, maskIntensity);\n");
            sb2.append("  vec4 enhancement = mask * unsharpAmount * enhanceBoost * threshold;\n");
            sb2.append("  \n");
            sb2.append("  // 明显增强 - 显著的锐化效果\n");
            sb2.append("  return originalColor + enhancement * 1.5;  // 明显增强\n");
            sb2.append("}\n");
            sb2.append("\n");
            sb2.append("void main() {\n");
            sb2.append("  gl_FragColor = clamp(applyUnsharpMaskEnhancedOES(tc), 0.0, 1.0);\n");
            sb2.append("}\n");
        }
        if (shaderType == ShaderType.YUV) {
            sb2.append("uniform sampler2D y_tex;\n");
            sb2.append("uniform sampler2D u_tex;\n");
            sb2.append("uniform sampler2D v_tex;\n");
            sb2.append("const mediump float c0 = 0.3829;\n");
            sb2.append("const mediump float c1 = 0.2420;\n");
            sb2.append("const mediump float c2 = 0.0751;\n");
            sb2.append("const mediump mat3 yuvToRgbMatrix = mat3(\n");
            sb2.append("  1.16438, 1.16438, 1.16438,\n");
            sb2.append("  0.0, -0.391762, 2.01723,\n");
            sb2.append("  1.59603, -0.812968, 0.0\n");
            sb2.append(");\n");
            sb2.append("const mediump vec3 yuvOffset = vec3(-0.874202, 0.531668, -1.08563);\n");
            sb2.append("vec3 sampleYUVFast(vec2 coord) {\n");
            sb2.append("  vec3 yuv = vec3(texture2D(y_tex, coord).r, texture2D(u_tex, coord).r, texture2D(v_tex, coord).r);\n");
            sb2.append("  return yuvToRgbMatrix * yuv + yuvOffset;\n");
            sb2.append("}\n");
            sb2.append("vec4 applyUnsharpMaskYUVOptimized(vec2 coord) {\n");
            sb2.append("  vec3 originalColor = sampleYUVFast(coord);\n");
            sb2.append("  vec2 offset = 1.0 / textureSize;\n");
            sb2.append("  \n");
            sb2.append("  // 优化对称采样 - 16个texture2D调用\n");
            sb2.append("  vec3 h1 = sampleYUVFast(coord + vec2(-1.0 * offset.x, 0.0)) + sampleYUVFast(coord + vec2(1.0 * offset.x, 0.0));\n");
            sb2.append("  vec3 h2 = sampleYUVFast(coord + vec2(-2.0 * offset.x, 0.0)) + sampleYUVFast(coord + vec2(2.0 * offset.x, 0.0));\n");
            sb2.append("  vec3 blurH = originalColor * c0 + h1 * c1 + h2 * c2;\n");
            sb2.append("  \n");
            sb2.append("  vec3 v1 = sampleYUVFast(coord + vec2(0.0, -1.0 * offset.y)) + sampleYUVFast(coord + vec2(0.0, 1.0 * offset.y));\n");
            sb2.append("  vec3 v2 = sampleYUVFast(coord + vec2(0.0, -2.0 * offset.y)) + sampleYUVFast(coord + vec2(0.0, 2.0 * offset.y));\n");
            sb2.append("  vec3 blurV = originalColor * c0 + v1 * c1 + v2 * c2;\n");
            sb2.append("  \n");
            sb2.append("  // 明显增强计算 - 显著提升YUV锐化效果\n");
            sb2.append("  vec3 blurColor = (blurH + blurV) * 0.5;\n");
            sb2.append("  vec3 mask = (originalColor - blurColor) * unsharpAmount * 1.9;\n");
            sb2.append("  float maskIntensity = dot(abs(mask), luminanceWeighting);\n");
            sb2.append("  float threshold = smoothstep(unsharpThreshold * 0.25, unsharpThreshold + 0.04, maskIntensity);\n");
            sb2.append("  vec3 enhancement = mask * threshold;\n");
            sb2.append("  \n");
            sb2.append("  return vec4(clamp(originalColor + enhancement * 1.4, 0.0, 1.0), 1.0);\n");
            sb2.append("}\n");
            sb2.append("\n");
            sb2.append("void main() {\n");
            sb2.append("  gl_FragColor = applyUnsharpMaskYUVOptimized(tc);\n");
            sb2.append("}\n");
        } else if (shaderType == ShaderType.RGB) {
            sb2.append("uniform sampler2D tex;\n");
            sb2.append("const mediump float c0 = 0.3829;\n");
            sb2.append("const mediump float c1 = 0.2420;\n");
            sb2.append("const mediump float c2 = 0.0751;\n");
            sb2.append("const mediump float c3 = 0.0093;\n");
            sb2.append("vec4 applyUnsharpMaskOptimizedRGB(vec2 coord) {\n");
            sb2.append("  vec4 originalColor = texture2D(tex, coord);\n");
            sb2.append("  vec2 offset = 1.0 / textureSize;\n");
            sb2.append("  \n");
            sb2.append("  // 高效对称采样 - 8个texture2D调用\n");
            sb2.append("  vec4 h1 = texture2D(tex, coord + vec2(-1.0 * offset.x, 0.0)) + texture2D(tex, coord + vec2(1.0 * offset.x, 0.0));\n");
            sb2.append("  vec4 h2 = texture2D(tex, coord + vec2(-2.0 * offset.x, 0.0)) + texture2D(tex, coord + vec2(2.0 * offset.x, 0.0));\n");
            sb2.append("  vec4 h3 = texture2D(tex, coord + vec2(-3.0 * offset.x, 0.0)) + texture2D(tex, coord + vec2(3.0 * offset.x, 0.0));\n");
            sb2.append("  vec4 v1 = texture2D(tex, coord + vec2(0.0, -1.0 * offset.y)) + texture2D(tex, coord + vec2(0.0, 1.0 * offset.y));\n");
            sb2.append("  \n");
            sb2.append("  // 快速模糊计算\n");
            sb2.append("  vec4 blurH = originalColor * c0 + h1 * c1 + h2 * c2 + h3 * c3;\n");
            sb2.append("  vec4 blurV = originalColor * c0 + v1 * c1;\n");
            sb2.append("  vec4 blurColor = (blurH + blurV) * 0.5;\n");
            sb2.append("  \n");
            sb2.append("  // 明显增强计算 - 显著提升RGB锐化效果\n");
            sb2.append("  vec4 mask = (originalColor - blurColor) * unsharpAmount * 1.8;\n");
            sb2.append("  float maskIntensity = dot(abs(mask.rgb), luminanceWeighting);\n");
            sb2.append("  float threshold = smoothstep(unsharpThreshold * 0.25, unsharpThreshold + 0.04, maskIntensity);\n");
            sb2.append("  vec4 enhancement = mask * threshold;\n");
            sb2.append("  \n");
            sb2.append("  return clamp(originalColor + enhancement * 1.45, 0.0, 1.0);\n");
            sb2.append("}\n");
            sb2.append("\n");
            sb2.append("void main() {\n");
            sb2.append("  gl_FragColor = applyUnsharpMaskOptimizedRGB(tc);\n");
            sb2.append("}\n");
        }
        return sb2.toString();
    }

    private void prepareShader(ShaderType shaderType, float[] fArr, int i10, int i11, int i12, int i13) {
        GlShader glShader;
        if (shaderType.equals(this.currentShaderType) && this.currentBlackWhiteDisplay == this.enableBlackWhiteDisplay && this.lastImageAdjustable == this.imageAdjustable && Float.compare(this.lastContrastRatio, this.contrastRatio) == 0 && Float.compare(this.lastBrightnessRatio, this.brightnessRatio) == 0 && Float.compare(this.lastSaturationRatio, this.saturationRatio) == 0 && this.lastUnsharpMarkStatus == this.unsharpMarkStatus && Float.compare(this.lastUnsharpAmount, this.unsharpAmount) == 0 && Float.compare(this.lastUnsharpThreshold, this.unsharpThreshold) == 0) {
            glShader = this.currentShader;
        } else {
            this.currentShaderType = null;
            GlShader glShader2 = this.currentShader;
            if (glShader2 != null) {
                glShader2.release();
                this.currentShader = null;
            }
            GlShader glShaderCreateShader = createShader(shaderType);
            this.currentShaderType = shaderType;
            this.currentShader = glShaderCreateShader;
            glShaderCreateShader.useProgram();
            if (shaderType != ShaderType.YUV) {
                GLES20.glUniform1i(glShaderCreateShader.getUniformLocation("tex"), 0);
            } else if (this.enableBlackWhiteDisplay) {
                GLES20.glUniform1i(glShaderCreateShader.getUniformLocation("y_tex"), 0);
            } else {
                GLES20.glUniform1i(glShaderCreateShader.getUniformLocation("y_tex"), 0);
                GLES20.glUniform1i(glShaderCreateShader.getUniformLocation("u_tex"), 1);
                GLES20.glUniform1i(glShaderCreateShader.getUniformLocation("v_tex"), 2);
            }
            GlUtil.checkNoGLES2Error("Create shader");
            this.shaderCallbacks.onNewShader(glShaderCreateShader);
            this.texMatrixLocation = glShaderCreateShader.getUniformLocation(TEXTURE_MATRIX_NAME);
            this.inPosLocation = glShaderCreateShader.getAttribLocation(INPUT_VERTEX_COORDINATE_NAME);
            this.inTcLocation = glShaderCreateShader.getAttribLocation(INPUT_TEXTURE_COORDINATE_NAME);
            if (this.imageAdjustable && !this.enableBlackWhiteDisplay) {
                this.contrastLocation = glShaderCreateShader.getUniformLocation(CONTRAST_NAME);
                this.brightnessLocation = glShaderCreateShader.getUniformLocation(BRIGHTNESS_NAME);
                this.saturationLocation = glShaderCreateShader.getUniformLocation(SATURATION_NAME);
                GLES20.glUniform1f(this.contrastLocation, this.contrastRatio);
                GLES20.glUniform1f(this.brightnessLocation, this.brightnessRatio);
                GLES20.glUniform1f(this.saturationLocation, this.saturationRatio);
            }
            if (this.unsharpMarkStatus) {
                Logging.d(TAG, "unsharpAmount:" + this.unsharpAmount + ",unsharpThreshold:" + this.unsharpThreshold);
                this.unsharpAmountLocation = glShaderCreateShader.getUniformLocation(UNSHARP_MASK_AMOUNT_NAME);
                this.unsharpThresholdLocation = glShaderCreateShader.getUniformLocation(UNSHARP_MASK_THRESHOLD_NAME);
                this.textureSizeLocation = glShaderCreateShader.getUniformLocation(TEXTURE_SIZE_NAME);
                GLES20.glUniform1f(this.unsharpAmountLocation, this.unsharpAmount);
                GLES20.glUniform1f(this.unsharpThresholdLocation, this.unsharpThreshold);
                GLES20.glUniform2f(this.textureSizeLocation, i10, i11);
            }
            this.lastContrastRatio = this.contrastRatio;
            this.lastBrightnessRatio = this.brightnessRatio;
            this.lastSaturationRatio = this.saturationRatio;
            this.lastImageAdjustable = this.imageAdjustable;
            this.lastUnsharpAmount = this.unsharpAmount;
            this.lastUnsharpThreshold = this.unsharpThreshold;
            this.lastUnsharpMarkStatus = this.unsharpMarkStatus;
            this.currentBlackWhiteDisplay = this.enableBlackWhiteDisplay;
            glShader = glShaderCreateShader;
        }
        glShader.useProgram();
        GLES20.glEnableVertexAttribArray(this.inPosLocation);
        GLES20.glVertexAttribPointer(this.inPosLocation, 2, 5126, false, 0, (Buffer) FULL_RECTANGLE_BUFFER);
        GLES20.glEnableVertexAttribArray(this.inTcLocation);
        GLES20.glVertexAttribPointer(this.inTcLocation, 2, 5126, false, 0, (Buffer) FULL_RECTANGLE_TEXTURE_BUFFER);
        GLES20.glUniformMatrix4fv(this.texMatrixLocation, 1, false, fArr, 0);
        this.shaderCallbacks.onPrepareShader(glShader, fArr, i10, i11, i12, i13);
        GlUtil.checkNoGLES2Error("Prepare shader");
    }

    GlShader createShader(ShaderType shaderType) {
        if (this.enableBlackWhiteDisplay) {
            Logging.d(TAG, "enable black white display shader");
            return new GlShader(this.vertexShader, createFragmentShaderStringForBlackWhiteDisplay(this.genericFragmentSource, shaderType, this));
        }
        if (!this.unsharpMarkStatus) {
            Logging.d(TAG, "enable common shader");
            return new GlShader(this.vertexShader, createFragmentShaderString(this.genericFragmentSource, shaderType, this));
        }
        if (this.useOptimizedUnsharpMask) {
            Logging.d(TAG, "enable optimized unsharp mask enhancement shader");
            return new GlShader(this.vertexShader, createFragmentShaderStringForUnsharpMaskOptimized(this.genericFragmentSource, shaderType, this));
        }
        Logging.d(TAG, "enable unsharp mark enhancement shader");
        return new GlShader(this.vertexShader, createFragmentShaderStringForUnsharpMask(this.genericFragmentSource, shaderType, this));
    }

    @Override // org.hmwebrtc.RendererCommon.GlDrawer
    public void drawOes(int i10, float[] fArr, int i11, int i12, int i13, int i14, int i15, int i16) {
        prepareShader(ShaderType.OES, fArr, i11, i12, i15, i16);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(GlPreview.GL_TEXTURE_EXTERNAL_OES, i10);
        GLES20.glViewport(i13, i14, i15, i16);
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glBindTexture(GlPreview.GL_TEXTURE_EXTERNAL_OES, 0);
    }

    @Override // org.hmwebrtc.RendererCommon.GlDrawer
    public void drawRgb(int i10, float[] fArr, int i11, int i12, int i13, int i14, int i15, int i16) {
        prepareShader(ShaderType.RGB, fArr, i11, i12, i15, i16);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, i10);
        GLES20.glViewport(i13, i14, i15, i16);
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glBindTexture(3553, 0);
    }

    @Override // org.hmwebrtc.RendererCommon.GlDrawer
    public void drawYuv(int[] iArr, float[] fArr, int i10, int i11, int i12, int i13, int i14, int i15) {
        prepareShader(ShaderType.YUV, fArr, i10, i11, i14, i15);
        int i16 = this.enableBlackWhiteDisplay ? 1 : 3;
        for (int i17 = 0; i17 < i16; i17++) {
            GLES20.glActiveTexture(33984 + i17);
            GLES20.glBindTexture(3553, iArr[i17]);
        }
        GLES20.glViewport(i12, i13, i14, i15);
        GLES20.glDrawArrays(5, 0, 4);
        for (int i18 = 0; i18 < 3; i18++) {
            GLES20.glActiveTexture(i18 + 33984);
            GLES20.glBindTexture(3553, 0);
        }
    }

    @Override // org.hmwebrtc.RendererCommon.GlDrawer
    public boolean getImageAdjustable() {
        return this.imageAdjustable;
    }

    public boolean getOptimizedUnsharpMask() {
        return this.useOptimizedUnsharpMask;
    }

    @Override // org.hmwebrtc.RendererCommon.GlDrawer
    public boolean getUnsharpMaskEnabled() {
        return this.unsharpMarkStatus;
    }

    @Override // org.hmwebrtc.RendererCommon.GlDrawer
    public void release() {
        GlShader glShader = this.currentShader;
        if (glShader != null) {
            glShader.release();
            this.currentShader = null;
            this.currentShaderType = null;
        }
    }

    @Override // org.hmwebrtc.RendererCommon.GlDrawer
    public void setBlackWhiteDisplay(boolean z10) {
        if (z10) {
            this.imageAdjustable = true;
            this.brightnessRatio = -0.1f;
            this.contrastRatio = 1.0f;
            this.saturationRatio = 0.1f;
            return;
        }
        this.imageAdjustable = this.imageAdjustableOfCloud;
        this.brightnessRatio = this.brightnessRatioOfCloud;
        this.contrastRatio = this.contrastRatioOfCloud;
        this.saturationRatio = this.saturationRatioOfCloud;
    }

    @Override // org.hmwebrtc.RendererCommon.GlDrawer
    public void setBrightnessRatio(float f10) {
        Logging.d(TAG, "set the image brightness ratio : " + f10);
        if (f10 >= -1.0f && f10 <= 1.0f) {
            this.brightnessRatio = f10;
        }
        this.brightnessRatioOfCloud = f10;
    }

    @Override // org.hmwebrtc.RendererCommon.GlDrawer
    public void setContrastRatio(float f10) {
        Logging.d(TAG, "set the image contrast ratio : " + f10);
        if (f10 >= 0.0f && f10 <= 4.0f) {
            this.contrastRatio = f10;
        }
        this.contrastRatioOfCloud = f10;
    }

    @Override // org.hmwebrtc.RendererCommon.GlDrawer
    public void setImageAdjustable(boolean z10) {
        Logging.d(TAG, "set the image adjustable : " + z10);
        this.imageAdjustable = z10;
        this.imageAdjustableOfCloud = z10;
    }

    public void setOptimizedUnsharpMask(boolean z10) {
        Logging.d(TAG, "set optimized unsharp mask : " + z10);
        this.useOptimizedUnsharpMask = z10;
    }

    @Override // org.hmwebrtc.RendererCommon.GlDrawer
    public void setSaturationRatio(float f10) {
        Logging.d(TAG, "set the image saturation ratio : " + f10);
        if (f10 >= 0.0f && f10 <= 2.0f) {
            this.saturationRatio = f10;
        }
        this.saturationRatioOfCloud = f10;
    }

    @Override // org.hmwebrtc.RendererCommon.GlDrawer
    public void setUnsharpMaskAmount(float f10) {
        Logging.d(TAG, "set the unsharp mask amount : " + f10);
        if (f10 < 0.0f || f10 > 3.0f) {
            return;
        }
        this.unsharpAmount = f10;
    }

    @Override // org.hmwebrtc.RendererCommon.GlDrawer
    public void setUnsharpMaskEnabled(boolean z10) {
        Logging.d(TAG, "set the unsharp mask enabled : " + z10);
        this.unsharpMarkStatus = z10;
    }

    @Override // org.hmwebrtc.RendererCommon.GlDrawer
    public void setUnsharpMaskThreshold(float f10) {
        Logging.d(TAG, "set the unsharp mask threshold : " + f10);
        if (f10 < 0.0f || f10 > 1.0f) {
            return;
        }
        this.unsharpThreshold = f10;
    }

    public GlGenericDrawer(String str, String str2, ShaderCallbacks shaderCallbacks) {
        this.useOptimizedUnsharpMask = true;
        this.lastContrastRatio = 1.0f;
        this.contrastRatio = 1.0f;
        this.lastBrightnessRatio = 0.0f;
        this.brightnessRatio = 0.0f;
        this.lastSaturationRatio = 1.0f;
        this.saturationRatio = 1.0f;
        this.lastUnsharpAmount = 1.5f;
        this.unsharpAmount = 1.5f;
        this.lastUnsharpThreshold = 0.0f;
        this.unsharpThreshold = 0.0f;
        this.brightnessRatioOfCloud = 0.0f;
        this.contrastRatioOfCloud = 1.0f;
        this.saturationRatioOfCloud = 1.0f;
        this.vertexShader = str;
        this.genericFragmentSource = str2;
        this.shaderCallbacks = shaderCallbacks;
    }
}
