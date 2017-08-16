.class public Lorg/telegram/ui/Components/RadialProgress;
.super Ljava/lang/Object;
.source "RadialProgress.java"


# static fields
.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private alphaForPrevious:Z

.field private animatedAlphaValue:F

.field private animatedProgressValue:F

.field private animationProgressStart:F

.field private cicleRect:Landroid/graphics/RectF;

.field private currentDrawable:Landroid/graphics/drawable/Drawable;

.field private currentProgress:F

.field private currentProgressTime:J

.field private currentWithRound:Z

.field private diff:I

.field private docSize:J

.field private docType:I

.field private hideCurrentDrawable:Z

.field private lastUpdateTime:J

.field private parent:Landroid/view/View;

.field private previousDrawable:Landroid/graphics/drawable/Drawable;

.field private previousWithRound:Z

.field private progressColor:I

.field private progressPaint:Landroid/graphics/Paint;

.field private progressRect:Landroid/graphics/RectF;

.field private progressTextPaint:Landroid/graphics/Paint;

.field private radOffset:F

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide v4, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    .line 25
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    .line 26
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    .line 27
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    .line 28
    iput-wide v4, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    .line 29
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    .line 43
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    .line 46
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RadialProgress;->alphaForPrevious:Z

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->rect:Landroid/graphics/RectF;

    .line 55
    sget-object v0, Lorg/telegram/ui/Components/RadialProgress;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/RadialProgress;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 58
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressTextPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressTextPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->parent:Landroid/view/View;

    .line 69
    return-void
.end method

.method private invalidateParent()V
    .locals 7

    .prologue
    .line 164
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 165
    .local v0, "offset":I
    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->parent:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    sub-int/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    sub-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .line 166
    return-void
.end method

.method private updateAnimation(Z)V
    .locals 14
    .param p1, "progress"    # Z

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x43480000    # 200.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 85
    .local v2, "newTime":J
    iget-wide v6, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    sub-long v0, v2, v6

    .line 86
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    .line 88
    if-eqz p1, :cond_5

    .line 89
    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_1

    .line 90
    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    const-wide/16 v6, 0x168

    mul-long/2addr v6, v0

    long-to-float v6, v6

    const v7, 0x453b8000    # 3000.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    .line 91
    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    iget v6, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    sub-float v4, v5, v6

    .line 92
    .local v4, "progressDiff":F
    cmpl-float v5, v4, v10

    if-lez v5, :cond_0

    .line 93
    iget-wide v6, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    .line 94
    iget-wide v6, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    const-wide/16 v8, 0x12c

    cmp-long v5, v6, v8

    if-ltz v5, :cond_4

    .line 95
    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    iput v5, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 96
    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    iput v5, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    .line 97
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    .line 102
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    .line 104
    .end local v4    # "progressDiff":F
    :cond_1
    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 105
    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    long-to-float v6, v0

    div-float/2addr v6, v12

    sub-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 106
    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_2

    .line 107
    iput v10, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 108
    iput-object v13, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    .line 122
    :cond_3
    :goto_1
    return-void

    .line 99
    .restart local v4    # "progressDiff":F
    :cond_4
    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    sget-object v6, Lorg/telegram/ui/Components/RadialProgress;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-wide v8, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    long-to-float v7, v8

    const/high16 v8, 0x43960000    # 300.0f

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    goto :goto_0

    .line 113
    .end local v4    # "progressDiff":F
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 114
    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    long-to-float v6, v0

    div-float/2addr v6, v12

    sub-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 115
    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_6

    .line 116
    iput v10, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 117
    iput-object v13, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 202
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->alphaForPrevious:Z

    if-eqz v0, :cond_7

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 207
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 211
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->hideCurrentDrawable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    sub-float v1, v10, v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 217
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 221
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentWithRound:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    if-eqz v0, :cond_e

    .line 223
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    if-eqz v0, :cond_9

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 230
    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    add-float/2addr v2, v0

    const/high16 v0, 0x43b40000    # 360.0f

    iget v3, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    mul-float/2addr v0, v3

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_6

    .line 233
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    cmpg-float v0, v0, v10

    if-gez v0, :cond_6

    iget-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->docSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 236
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->docType:I

    if-eq v0, v11, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->docType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->docType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 237
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->rect:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 243
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/telegram/ui/Components/RadialProgress;->docSize:J

    long-to-float v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->docType:I

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, p0, Lorg/telegram/ui/Components/RadialProgress;->docSize:J

    long-to-float v0, v8

    iget v3, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    mul-float/2addr v0, v3

    const v3, 0x4cc7ffb5    # 1.04857E8f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    const-string/jumbo v0, "%.1f"

    :goto_3
    new-array v3, v11, [Ljava/lang/Object;

    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, "s":Ljava/lang/String;
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgress;->docType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_5

    :cond_5
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v0

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->docType:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_c

    const/high16 v0, 0x41000000    # 8.0f

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->progressTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 249
    .end local v6    # "s":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, v11}, Lorg/telegram/ui/Components/RadialProgress;->updateAnimation(Z)V

    .line 253
    :goto_6
    return-void

    .line 205
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_0

    .line 215
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 227
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_2

    .line 243
    :cond_a
    const-string/jumbo v0, "%.0f"

    goto :goto_3

    :cond_b
    const-string/jumbo v0, ""

    goto :goto_4

    .line 245
    .restart local v6    # "s":Ljava/lang/String;
    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->docType:I

    const/16 v3, 0xe

    if-ne v0, v3, :cond_d

    const/high16 v0, 0x41c00000    # 24.0f

    goto :goto_5

    :cond_d
    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_5

    .line 251
    .end local v6    # "s":Ljava/lang/String;
    :cond_e
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/RadialProgress;->updateAnimation(Z)V

    goto :goto_6
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlphaForPrevious(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress;->alphaForPrevious:Z

    .line 81
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "withRound"    # Z
    .param p3, "animated"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    .line 170
    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    .line 172
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentWithRound:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    .line 173
    iput v2, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 174
    invoke-virtual {p0, v2, p3}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 179
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/RadialProgress;->currentWithRound:Z

    .line 180
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    .line 181
    if-nez p3, :cond_1

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 186
    :goto_1
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    goto :goto_1
.end method

.method public setDiff(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 125
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    .line 126
    return-void
.end method

.method public setHideCurrentDrawable(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress;->hideCurrentDrawable:Z

    .line 135
    return-void
.end method

.method public setProgress(FZ)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "animated"    # Z

    .prologue
    const/4 v1, 0x0

    .line 138
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 139
    iput v1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    :cond_0
    if-nez p2, :cond_1

    .line 143
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 144
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    .line 151
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    .line 154
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    .line 155
    return-void

    .line 146
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_2

    .line 147
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 149
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    goto :goto_0
.end method

.method public setProgressColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 129
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "chat_mediaProgress"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .end local p1    # "color":I
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    return-void

    .line 130
    .restart local p1    # "color":I
    :cond_0
    const-string/jumbo v1, "chat_outFileProgressSelected"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    if-eq p1, v1, :cond_1

    const-string/jumbo v1, "chat_outFileProgress"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_2

    :cond_1
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->chatRTextColor:I

    goto :goto_0

    :cond_2
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->chatLTextColor:I

    goto :goto_0
.end method

.method public setProgressRect(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 77
    return-void
.end method

.method public setSizeAndType(JI)V
    .locals 5
    .param p1, "size"    # J
    .param p3, "type"    # I

    .prologue
    const/high16 v0, 0x41100000    # 9.0f

    .line 158
    iput-wide p1, p0, Lorg/telegram/ui/Components/RadialProgress;->docSize:J

    .line 159
    iput p3, p0, Lorg/telegram/ui/Components/RadialProgress;->docType:I

    .line 160
    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->progressTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgress;->docType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    return-void

    .line 160
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/RadialProgress;->docType:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_0

    const/high16 v0, 0x41400000    # 12.0f

    goto :goto_0
.end method

.method public setStrikeWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    return-void
.end method

.method public swapBackground(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 190
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    .line 191
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
