.class public Lorg/telegram/ui/Components/CheckBox;
.super Landroid/view/View;
.source "CheckBox.java"


# static fields
.field private static backgroundPaint:Landroid/graphics/Paint; = null

.field private static checkPaint:Landroid/graphics/Paint; = null

.field private static eraser:Landroid/graphics/Paint; = null

.field private static eraser2:Landroid/graphics/Paint; = null

.field private static paint:Landroid/graphics/Paint; = null

.field private static final progressBounceDiff:F = 0.2f


# instance fields
.field private attachedToWindow:Z

.field private bitmapCanvas:Landroid/graphics/Canvas;

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private checkBitmap:Landroid/graphics/Bitmap;

.field private checkCanvas:Landroid/graphics/Canvas;

.field private checkDrawable:Landroid/graphics/drawable/Drawable;

.field private checkOffset:I

.field private color:I

.field private drawBackground:Z

.field private drawBitmap:Landroid/graphics/Bitmap;

.field private hasBorder:Z

.field private isCheckAnimation:Z

.field private isChecked:Z

.field private progress:F

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean v4, p0, Lorg/telegram/ui/Components/CheckBox;->isCheckAnimation:Z

    .line 52
    const/16 v1, 0x16

    iput v1, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    .line 60
    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/CheckBox;->paint:Landroid/graphics/Paint;

    .line 62
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/CheckBox;->eraser:Landroid/graphics/Paint;

    .line 63
    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->eraser:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->eraser:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 65
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/CheckBox;->eraser2:Landroid/graphics/Paint;

    .line 66
    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->eraser2:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->eraser2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->eraser2:Landroid/graphics/Paint;

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->eraser2:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/CheckBox;->backgroundPaint:Landroid/graphics/Paint;

    .line 71
    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_0

    .line 76
    const v1, 0x7f020055

    if-ne p2, v1, :cond_0

    .line 77
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "theme"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    .local v0, "themePrefs":Landroid/content/SharedPreferences;
    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->backgroundPaint:Landroid/graphics/Paint;

    const-string/jumbo v2, "chatAttachBGColor"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    .end local v0    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/CheckBox;->checkDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    return-void
.end method

.method private animateToCheckedState(Z)V
    .locals 4
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBox;->isCheckAnimation:Z

    .line 150
    const-string/jumbo v1, "progress"

    const/4 v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 153
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelCheckAnimator()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBox;->isChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBox;->attachedToWindow:Z

    .line 159
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBox;->attachedToWindow:Z

    .line 165
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-boolean v8, p0, Lorg/telegram/ui/Components/CheckBox;->drawBackground:Z

    if-nez v8, :cond_2

    iget v8, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_0

    .line 196
    :cond_2
    sget-object v8, Lorg/telegram/ui/Components/CheckBox;->eraser2:Landroid/graphics/Paint;

    iget v9, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    add-int/lit8 v9, v9, 0x6

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 198
    iget-object v8, p0, Lorg/telegram/ui/Components/CheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 199
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v2, v8

    .line 201
    .local v2, "rad":F
    iget v8, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    .line 202
    .local v3, "roundProgress":F
    :goto_1
    iget v8, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_7

    const/4 v0, 0x0

    .line 204
    .local v0, "checkProgress":F
    :goto_2
    iget-boolean v8, p0, Lorg/telegram/ui/Components/CheckBox;->isCheckAnimation:Z

    if-eqz v8, :cond_8

    iget v4, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    .line 205
    .local v4, "roundProgressCheckState":F
    :goto_3
    const v8, 0x3e4ccccd    # 0.2f

    cmpg-float v8, v4, v8

    if-gez v8, :cond_9

    .line 206
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    const v9, 0x3e4ccccd    # 0.2f

    div-float/2addr v8, v9

    sub-float/2addr v2, v8

    .line 210
    :cond_3
    :goto_4
    iget-boolean v8, p0, Lorg/telegram/ui/Components/CheckBox;->drawBackground:Z

    if-eqz v8, :cond_4

    .line 211
    sget-object v8, Lorg/telegram/ui/Components/CheckBox;->paint:Landroid/graphics/Paint;

    const/high16 v9, 0x44000000    # 512.0f

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v2, v10

    sget-object v11, Lorg/telegram/ui/Components/CheckBox;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 213
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v2, v10

    sget-object v11, Lorg/telegram/ui/Components/CheckBox;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 216
    :cond_4
    sget-object v8, Lorg/telegram/ui/Components/CheckBox;->paint:Landroid/graphics/Paint;

    iget v9, p0, Lorg/telegram/ui/Components/CheckBox;->color:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-boolean v8, p0, Lorg/telegram/ui/Components/CheckBox;->hasBorder:Z

    if-eqz v8, :cond_5

    .line 219
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v2, v8

    .line 221
    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/Components/CheckBox;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sget-object v11, Lorg/telegram/ui/Components/CheckBox;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v2, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 222
    iget-object v8, p0, Lorg/telegram/ui/Components/CheckBox;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v3

    mul-float/2addr v11, v2

    sget-object v12, Lorg/telegram/ui/Components/CheckBox;->eraser:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 223
    iget-object v8, p0, Lorg/telegram/ui/Components/CheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 225
    iget-object v8, p0, Lorg/telegram/ui/Components/CheckBox;->checkBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 226
    iget-object v8, p0, Lorg/telegram/ui/Components/CheckBox;->checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 227
    .local v5, "w":I
    iget-object v8, p0, Lorg/telegram/ui/Components/CheckBox;->checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 228
    .local v1, "h":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v8, v5

    div-int/lit8 v6, v8, 0x2

    .line 229
    .local v6, "x":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v1

    div-int/lit8 v7, v8, 0x2

    .line 231
    .local v7, "y":I
    iget-object v8, p0, Lorg/telegram/ui/Components/CheckBox;->checkDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lorg/telegram/ui/Components/CheckBox;->checkOffset:I

    add-int/2addr v9, v7

    add-int v10, v6, v5

    add-int v11, v7, v1

    iget v12, p0, Lorg/telegram/ui/Components/CheckBox;->checkOffset:I

    add-int/2addr v11, v12

    invoke-virtual {v8, v6, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 232
    iget-object v8, p0, Lorg/telegram/ui/Components/CheckBox;->checkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lorg/telegram/ui/Components/CheckBox;->checkCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 233
    iget-object v8, p0, Lorg/telegram/ui/Components/CheckBox;->checkCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    const/high16 v10, 0x40200000    # 2.5f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->getMeasuredWidth()I

    move-result v11

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v0

    mul-float/2addr v11, v12

    sget-object v12, Lorg/telegram/ui/Components/CheckBox;->eraser2:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 235
    iget-object v8, p0, Lorg/telegram/ui/Components/CheckBox;->checkBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 201
    .end local v0    # "checkProgress":F
    .end local v1    # "h":I
    .end local v3    # "roundProgress":F
    .end local v4    # "roundProgressCheckState":F
    .end local v5    # "w":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_6
    iget v8, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    const/high16 v9, 0x3f000000    # 0.5f

    div-float v3, v8, v9

    goto/16 :goto_1

    .line 202
    .restart local v3    # "roundProgress":F
    :cond_7
    iget v8, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    div-float v0, v8, v9

    goto/16 :goto_2

    .line 204
    .restart local v0    # "checkProgress":F
    :cond_8
    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    sub-float v4, v8, v9

    goto/16 :goto_3

    .line 207
    .restart local v4    # "roundProgressCheckState":F
    :cond_9
    const v8, 0x3ecccccd    # 0.4f

    cmpg-float v8, v4, v8

    if-gez v8, :cond_3

    .line 208
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3e4ccccd    # 0.2f

    sub-float v10, v4, v10

    mul-float/2addr v9, v10

    const v10, 0x3e4ccccd    # 0.2f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    sub-float/2addr v2, v8

    goto/16 :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 169
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 170
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 133
    iput p1, p0, Lorg/telegram/ui/Components/CheckBox;->color:I

    .line 134
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->invalidate()V

    .line 135
    return-void
.end method

.method public setCheckColor(I)V
    .locals 3
    .param p1, "checkColor"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 139
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->invalidate()V

    .line 140
    return-void
.end method

.method public setCheckOffset(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 115
    iput p1, p0, Lorg/telegram/ui/Components/CheckBox;->checkOffset:I

    .line 116
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 173
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBox;->isChecked:Z

    if-ne p1, v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 176
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBox;->isChecked:Z

    .line 178
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBox;->attachedToWindow:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 179
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CheckBox;->animateToCheckedState(Z)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBox;->cancelCheckAnimator()V

    .line 182
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/CheckBox;->setProgress(F)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setColor(II)V
    .locals 3
    .param p1, "backgroundColor"    # I
    .param p2, "checkColor"    # I

    .prologue
    .line 127
    iput p1, p0, Lorg/telegram/ui/Components/CheckBox;->color:I

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 129
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->invalidate()V

    .line 130
    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBox;->drawBackground:Z

    .line 108
    return-void
.end method

.method public setHasBorder(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBox;->hasBorder:Z

    .line 112
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 99
    iget v0, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    .line 103
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox;->invalidate()V

    goto :goto_0
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 119
    iput p1, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    .line 120
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 91
    iget v0, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    .line 92
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/CheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 93
    iget v0, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkBitmap:Landroid/graphics/Bitmap;

    .line 94
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/CheckBox;->checkBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkCanvas:Landroid/graphics/Canvas;

    .line 96
    :cond_0
    return-void
.end method
