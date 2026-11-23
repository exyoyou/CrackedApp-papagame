package org.webrtc.haima.camerarecorder.egl.filter;

import android.opengl.GLES20;
import com.join.mgps.Util.v0;
import java.util.HashMap;
import org.webrtc.haima.camerarecorder.egl.EglUtil;
import org.webrtc.haima.camerarecorder.egl.GLES20FramebufferObject;

/* JADX INFO: loaded from: classes10.dex */
public class GlFilter {
    public static final String DEFAULT_ATTRIB_POSITION = "aPosition";
    public static final String DEFAULT_ATTRIB_TEXTURE_COORDINATE = "aTextureCoord";
    protected static final String DEFAULT_FRAGMENT_SHADER = "precision mediump float;\nvarying highp vec2 vTextureCoord;\nuniform lowp sampler2D sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
    public static final String DEFAULT_UNIFORM_SAMPLER = "sTexture";
    protected static final String DEFAULT_VERTEX_SHADER = "attribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n";
    private static final int FLOAT_SIZE_BYTES = 4;
    private static final float[] VERTICES_DATA = {-1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f, -1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f};
    protected static final int VERTICES_DATA_POS_OFFSET = 0;
    protected static final int VERTICES_DATA_POS_SIZE = 3;
    protected static final int VERTICES_DATA_STRIDE_BYTES = 20;
    protected static final int VERTICES_DATA_UV_OFFSET = 12;
    protected static final int VERTICES_DATA_UV_SIZE = 2;
    private int fragmentShader;
    private String fragmentShaderSource;
    private final HashMap<String, Integer> handleMap;
    private int program;
    protected String shaderName;
    private int vertexBufferName;
    private int vertexShader;
    private final String vertexShaderSource;

    public GlFilter() {
        this(DEFAULT_VERTEX_SHADER, DEFAULT_FRAGMENT_SHADER);
    }

    public void draw(int i10, GLES20FramebufferObject gLES20FramebufferObject) {
        useProgram();
        GLES20.glBindBuffer(34962, this.vertexBufferName);
        GLES20.glEnableVertexAttribArray(getHandle(DEFAULT_ATTRIB_POSITION));
        GLES20.glVertexAttribPointer(getHandle(DEFAULT_ATTRIB_POSITION), 3, 5126, false, 20, 0);
        GLES20.glEnableVertexAttribArray(getHandle(DEFAULT_ATTRIB_TEXTURE_COORDINATE));
        GLES20.glVertexAttribPointer(getHandle(DEFAULT_ATTRIB_TEXTURE_COORDINATE), 2, 5126, false, 20, 12);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, i10);
        GLES20.glUniform1i(getHandle(DEFAULT_UNIFORM_SAMPLER), 0);
        onDraw();
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glDisableVertexAttribArray(getHandle(DEFAULT_ATTRIB_POSITION));
        GLES20.glDisableVertexAttribArray(getHandle(DEFAULT_ATTRIB_TEXTURE_COORDINATE));
        GLES20.glBindTexture(3553, 0);
        GLES20.glBindBuffer(34962, 0);
    }

    protected final int getHandle(String str) {
        Integer num = this.handleMap.get(str);
        if (num != null) {
            return num.intValue();
        }
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.program, str);
        if (iGlGetAttribLocation == -1) {
            iGlGetAttribLocation = GLES20.glGetUniformLocation(this.program, str);
        }
        if (iGlGetAttribLocation != -1) {
            this.handleMap.put(str, Integer.valueOf(iGlGetAttribLocation));
            return iGlGetAttribLocation;
        }
        throw new IllegalStateException("Could not get attrib or uniform location for " + str);
    }

    public String getName() {
        return this.shaderName;
    }

    protected final int getVertexBufferName() {
        return this.vertexBufferName;
    }

    protected void onDraw() {
    }

    public void release() {
        GLES20.glDeleteProgram(this.program);
        this.program = 0;
        GLES20.glDeleteShader(this.vertexShader);
        this.vertexShader = 0;
        GLES20.glDeleteShader(this.fragmentShader);
        this.fragmentShader = 0;
        GLES20.glDeleteBuffers(1, new int[]{this.vertexBufferName}, 0);
        this.vertexBufferName = 0;
        this.handleMap.clear();
    }

    public void setFragmentShaderSource(String str) {
        this.fragmentShaderSource = str;
    }

    public void setFrameSize(int i10, int i11) {
    }

    public void setShaderName(String str) {
        this.shaderName = str;
    }

    public void setup() {
        release();
        this.vertexShader = EglUtil.loadShader(this.vertexShaderSource, 35633);
        int iLoadShader = EglUtil.loadShader(this.fragmentShaderSource, 35632);
        this.fragmentShader = iLoadShader;
        this.program = EglUtil.createProgram(this.vertexShader, iLoadShader);
        this.vertexBufferName = EglUtil.createBuffer(VERTICES_DATA);
        getHandle(DEFAULT_ATTRIB_POSITION);
        getHandle(DEFAULT_ATTRIB_TEXTURE_COORDINATE);
        getHandle(DEFAULT_UNIFORM_SAMPLER);
    }

    protected final void useProgram() {
        GLES20.glUseProgram(this.program);
    }

    public GlFilter(String str, String str2) {
        this.shaderName = v0.f50057a;
        this.handleMap = new HashMap<>();
        this.vertexShaderSource = str;
        this.fragmentShaderSource = str2;
    }
}
