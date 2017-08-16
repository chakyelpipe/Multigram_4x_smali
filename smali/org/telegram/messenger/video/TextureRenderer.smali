.class public Lorg/telegram/messenger/video/TextureRenderer;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureID:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I

.field private rotationAngle:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    const/16 v2, 0x10

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-array v1, v2, [F

    iput-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    .line 59
    new-array v1, v2, [F

    iput-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    .line 60
    const/16 v1, -0x3039

    iput v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    .line 70
    iput p1, p0, Lorg/telegram/messenger/video/TextureRenderer;->rotationAngle:I

    .line 71
    const/16 v1, 0x14

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 77
    .local v0, "mTriangleVerticesData":[F
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 78
    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 80
    return-void

    .line 71
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 174
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lorg/telegram/messenger/video/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 175
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 198
    :cond_0
    :goto_0
    return v2

    .line 178
    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lorg/telegram/messenger/video/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 179
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 180
    goto :goto_0

    .line 182
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 183
    .local v2, "program":I
    const-string/jumbo v5, "glCreateProgram"

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 184
    if-nez v2, :cond_3

    move v2, v4

    .line 185
    goto :goto_0

    .line 187
    :cond_3
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 188
    const-string/jumbo v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 189
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 190
    const-string/jumbo v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 191
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 192
    new-array v0, v6, [I

    .line 193
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 194
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 195
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 196
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 161
    .local v1, "shader":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 162
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 163
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 164
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 165
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 166
    aget v2, v0, v4

    if-nez v2, :cond_0

    .line 167
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 168
    const/4 v1, 0x0

    .line 170
    :cond_0
    return v1
.end method


# virtual methods
.method public checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 204
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_0
    return-void
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;Z)V
    .locals 8
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;
    .param p2, "invert"    # Z

    .prologue
    const/16 v5, 0xd

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v3, 0x0

    .line 87
    const-string/jumbo v0, "onDrawFrame start"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 90
    if-eqz p2, :cond_0

    .line 91
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    iget-object v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    aget v2, v2, v6

    neg-float v2, v2

    aput v2, v0, v6

    .line 92
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v4, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    aget v4, v4, v5

    sub-float/2addr v2, v4

    aput v2, v0, v5

    .line 95
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 96
    const-string/jumbo v0, "glUseProgram"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 97
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 98
    const v0, 0x8d65

    iget v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 101
    const-string/jumbo v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 103
    const-string/jumbo v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 106
    const-string/jumbo v0, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 107
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 108
    const-string/jumbo v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 110
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:I

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 111
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:I

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 112
    const/4 v0, 0x4

    invoke-static {v6, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 113
    const-string/jumbo v0, "glDrawArrays"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 115
    return-void
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    return v0
.end method

.method public surfaceCreated()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, -0x1

    const v4, 0x8d65

    .line 118
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v2, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    .line 119
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    const-string/jumbo v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:I

    .line 123
    const-string/jumbo v0, "glGetAttribLocation aPosition"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:I

    if-ne v0, v5, :cond_1

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    const-string/jumbo v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:I

    .line 128
    const-string/jumbo v0, "glGetAttribLocation aTextureCoord"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 129
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:I

    if-ne v0, v5, :cond_2

    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    const-string/jumbo v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:I

    .line 133
    const-string/jumbo v0, "glGetUniformLocation uMVPMatrix"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 134
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:I

    if-ne v0, v5, :cond_3

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_3
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    const-string/jumbo v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:I

    .line 138
    const-string/jumbo v0, "glGetUniformLocation uSTMatrix"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 139
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:I

    if-ne v0, v5, :cond_4

    .line 140
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_4
    new-array v6, v7, [I

    .line 143
    .local v6, "textures":[I
    invoke-static {v7, v6, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 144
    aget v0, v6, v1

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    .line 145
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 146
    const-string/jumbo v0, "glBindTexture mTextureID"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 147
    const/16 v0, 0x2801

    const/16 v2, 0x2601

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 148
    const/16 v0, 0x2800

    const/16 v2, 0x2601

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 149
    const/16 v0, 0x2802

    const v2, 0x812f

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 150
    const/16 v0, 0x2803

    const v2, 0x812f

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 151
    const-string/jumbo v0, "glTexParameter"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 154
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->rotationAngle:I

    if-eqz v0, :cond_5

    .line 155
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    iget v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->rotationAngle:I

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 157
    :cond_5
    return-void
.end method
