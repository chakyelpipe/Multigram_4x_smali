.class public Lorg/telegram/ui/Cells/TextCheckCell;
.super Landroid/widget/FrameLayout;
.source "TextCheckCell.java"


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/Switch;

.field private disabled:Z

.field private isMultiline:Z

.field private needDivider:Z

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 43
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 45
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    :goto_1
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x42800000    # 64.0f

    :goto_2
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    const/high16 v5, 0x41880000    # 17.0f

    :goto_3
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 50
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 56
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    :goto_5
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_6

    const/high16 v3, 0x42800000    # 64.0f

    :goto_6
    const/high16 v4, 0x420c0000    # 35.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_7

    const/high16 v5, 0x41880000    # 17.0f

    :goto_7
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v0, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setFocusable(Z)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setFocusableInTouchMode(Z)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setClickable(Z)V

    .line 63
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    :goto_8
    or-int/lit8 v2, v2, 0x10

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x3

    goto/16 :goto_1

    :cond_2
    const/high16 v3, 0x41880000    # 17.0f

    goto/16 :goto_2

    :cond_3
    const/high16 v5, 0x42800000    # 64.0f

    goto/16 :goto_3

    .line 50
    :cond_4
    const/4 v0, 0x3

    goto/16 :goto_4

    .line 56
    :cond_5
    const/4 v2, 0x3

    goto :goto_5

    :cond_6
    const/high16 v3, 0x41880000    # 17.0f

    goto :goto_6

    :cond_7
    const/high16 v5, 0x42800000    # 64.0f

    goto :goto_7

    .line 63
    :cond_8
    const/4 v2, 0x5

    goto :goto_8
.end method

.method private setTheme()V
    .locals 2

    .prologue
    .line 145
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 138
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 68
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isMultiline:Z

    if-eqz v0, :cond_1

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 73
    :goto_0
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTheme()V

    .line 74
    :cond_0
    return-void

    .line 71
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/high16 v0, 0x42800000    # 64.0f

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    add-int/2addr v0, v3

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v2, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42400000    # 48.0f

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 130
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 118
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setTextAndCheck(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "checked"    # Z
    .param p3, "divider"    # Z

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isMultiline:Z

    .line 79
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 80
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    .line 81
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 84
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 85
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    if-nez p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setWillNotDraw(Z)V

    .line 87
    return-void
.end method

.method public setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "checked"    # Z
    .param p4, "multiline"    # Z
    .param p5, "divider"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v3, p3}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 93
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    .line 94
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isMultiline:Z

    .line 96
    if-eqz p4, :cond_0

    .line 97
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 98
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 99
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 100
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 101
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v2, v2, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 109
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, -0x2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 111
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 112
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    if-nez p5, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setWillNotDraw(Z)V

    .line 114
    return-void

    .line 103
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 104
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 105
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 106
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 107
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    move v1, v2

    .line 113
    goto :goto_1
.end method
