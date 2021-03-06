.class public Lorg/telegram/ui/Components/TypingDotsDrawable;
.super Lorg/telegram/ui/Components/StatusDrawable;
.source "TypingDotsDrawable.java"


# instance fields
.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private elapsedTimes:[F

.field private isChat:Z

.field private lastUpdateTime:J

.field private scales:[F

.field private startTimes:[F

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 20
    invoke-direct {p0}, Lorg/telegram/ui/Components/StatusDrawable;-><init>()V

    .line 22
    iput-boolean v2, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->isChat:Z

    .line 23
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    .line 24
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    .line 25
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    .line 27
    iput-boolean v2, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    .line 28
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-void

    .line 24
    nop

    :array_0
    .array-data 4
        0x0
        0x43160000    # 150.0f
        0x43960000    # 300.0f
    .end array-data

    .line 25
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/TypingDotsDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/TypingDotsDrawable;

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->checkUpdate()V

    return-void
.end method

.method private checkUpdate()V
    .locals 4

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationCenter;->isAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-direct {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->update()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/TypingDotsDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TypingDotsDrawable$1;-><init>(Lorg/telegram/ui/Components/TypingDotsDrawable;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private update()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x43a00000    # 320.0f

    const v10, 0x3faa3d71    # 1.33f

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 36
    .local v4, "newTime":J
    iget-wide v8, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    sub-long v2, v4, v8

    .line 37
    .local v2, "dt":J
    iput-wide v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    .line 38
    const-wide/16 v8, 0x32

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    .line 39
    const-wide/16 v2, 0x32

    .line 42
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v7, 0x3

    if-ge v0, v7, :cond_5

    .line 43
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    aget v8, v7, v0

    long-to-float v9, v2

    add-float/2addr v8, v9

    aput v8, v7, v0

    .line 44
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    aget v7, v7, v0

    iget-object v8, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    aget v8, v8, v0

    sub-float v6, v7, v8

    .line 45
    .local v6, "timeSinceStart":F
    cmpl-float v7, v6, v12

    if-lez v7, :cond_4

    .line 46
    cmpg-float v7, v6, v11

    if-gtz v7, :cond_1

    .line 47
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float v8, v6, v11

    invoke-virtual {v7, v8}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 48
    .local v1, "diff":F
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    add-float v8, v10, v1

    aput v8, v7, v0

    .line 42
    .end local v1    # "diff":F
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const/high16 v7, 0x44200000    # 640.0f

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_2

    .line 50
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v8, v6, v11

    div-float/2addr v8, v11

    invoke-virtual {v7, v8}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 51
    .restart local v1    # "diff":F
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v1

    add-float/2addr v8, v10

    aput v8, v7, v0

    goto :goto_1

    .line 52
    .end local v1    # "diff":F
    :cond_2
    const/high16 v7, 0x44480000    # 800.0f

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_3

    .line 53
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    aput v12, v7, v0

    .line 54
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    aput v12, v7, v0

    .line 55
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    aput v10, v7, v0

    goto :goto_1

    .line 57
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    aput v10, v7, v0

    goto :goto_1

    .line 60
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    aput v10, v7, v0

    goto :goto_1

    .line 64
    .end local v6    # "timeSinceStart":F
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->invalidateSelf()V

    .line 65
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 87
    iget-boolean v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->isChat:Z

    if-eqz v1, :cond_1

    .line 88
    const/high16 v1, 0x41080000    # 8.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v0, v1, v2

    .line 92
    .local v0, "y":I
    :goto_0
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_statusPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 94
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_statusPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatTypingColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    :cond_0
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_statusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 97
    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_statusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 98
    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_statusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 99
    invoke-direct {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->checkUpdate()V

    .line 100
    return-void

    .line 90
    .end local v0    # "y":I
    :cond_1
    const v1, 0x4114cccd    # 9.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v0, v1, v2

    .restart local v0    # "y":I
    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 139
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 134
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 120
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 125
    return-void
.end method

.method public setIsChat(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->isChat:Z

    .line 32
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    .line 70
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->invalidateSelf()V

    .line 71
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 74
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    aput v3, v1, v0

    .line 76
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const v2, 0x3faa3d71    # 1.33f

    aput v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    aput v3, v1, v4

    .line 79
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    const/4 v2, 0x1

    const/high16 v3, 0x43160000    # 150.0f

    aput v3, v1, v2

    .line 80
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    const/4 v2, 0x2

    const/high16 v3, 0x43960000    # 300.0f

    aput v3, v1, v2

    .line 81
    iput-boolean v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    .line 82
    return-void
.end method
