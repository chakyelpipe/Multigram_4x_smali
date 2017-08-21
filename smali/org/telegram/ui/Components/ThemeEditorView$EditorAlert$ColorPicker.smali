.class Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;
.super Landroid/widget/FrameLayout;
.source "ThemeEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorPicker"
.end annotation


# instance fields
.field private alpha:F

.field private alphaGradient:Landroid/graphics/LinearGradient;

.field private alphaPressed:Z

.field private circleDrawable:Landroid/graphics/drawable/Drawable;

.field private circlePaint:Landroid/graphics/Paint;

.field private circlePressed:Z

.field private colorEditText:[Landroid/widget/EditText;

.field private colorGradient:Landroid/graphics/LinearGradient;

.field private colorHSV:[F

.field private colorPressed:Z

.field private colorWheelBitmap:Landroid/graphics/Bitmap;

.field private colorWheelPaint:Landroid/graphics/Paint;

.field private colorWheelRadius:I

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private hsvTemp:[F

.field private linearLayout:Landroid/widget/LinearLayout;

.field private final paramValueSliderWidth:I

.field final synthetic this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

.field private valueSliderPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    .line 184
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 157
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    .line 166
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    .line 170
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    .line 171
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    .line 173
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    .line 181
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->setWillNotDraw(Z)V

    .line 187
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    .line 188
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circleDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 194
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 198
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x31

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    new-instance v0, Lorg/telegram/ui/Components/HistorySelectorView;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lorg/telegram/ui/Components/HistorySelectorView;-><init>(Landroid/content/Context;I)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$002(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Lorg/telegram/ui/Components/HistorySelectorView;)Lorg/telegram/ui/Components/HistorySelectorView;

    .line 203
    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/HistorySelectorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HistorySelectorView;->setWillNotDraw(Z)V

    .line 204
    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/HistorySelectorView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HistorySelectorView;->setOnColorChangedListener(Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;)V

    .line 214
    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/HistorySelectorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HistorySelectorView;->setOrientation(I)V

    .line 215
    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/HistorySelectorView;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x51

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    const/4 v0, 0x4

    if-ge v6, v0, :cond_6

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 227
    if-nez v6, :cond_1

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const-string/jumbo v1, "red"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 236
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v1, v0, v6

    const/4 v0, 0x3

    if-ne v6, v0, :cond_4

    const/4 v0, 0x6

    :goto_2
    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 237
    const/4 v0, 0x1

    new-array v7, v0, [Landroid/text/InputFilter;

    .line 238
    .local v7, "inputFilters":[Landroid/text/InputFilter;
    const/4 v0, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v7, v0

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 240
    move v8, v6

    .line 241
    .local v8, "num":I
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v10, v0, v6

    const/16 v0, 0x37

    const/16 v1, 0x24

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v6, v4, :cond_5

    const/high16 v4, 0x41800000    # 16.0f

    :goto_3
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    new-instance v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$2;

    invoke-direct {v1, p0, p1, v8}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$2;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    new-instance v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$3;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 217
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 229
    .end local v7    # "inputFilters":[Landroid/text/InputFilter;
    .end local v8    # "num":I
    :cond_1
    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const-string/jumbo v1, "green"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 231
    :cond_2
    const/4 v0, 0x2

    if-ne v6, v0, :cond_3

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const-string/jumbo v1, "blue"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 233
    :cond_3
    const/4 v0, 0x3

    if-ne v6, v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v0, v0, v6

    const-string/jumbo v1, "alpha"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 236
    :cond_4
    const/4 v0, 0x5

    goto :goto_2

    .line 241
    .restart local v7    # "inputFilters":[Landroid/text/InputFilter;
    .restart local v8    # "num":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 298
    .end local v7    # "inputFilters":[Landroid/text/InputFilter;
    .end local v8    # "num":I
    :cond_6
    return-void

    .line 170
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;)[Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    .prologue
    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    return-object v0
.end method

.method private createColorWheelBitmap(II)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 373
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 375
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    const/16 v12, 0xc

    .line 376
    .local v12, "colorCount":I
    const/16 v11, 0x1e

    .line 377
    .local v11, "colorAngleStep":I
    const/16 v3, 0xd

    new-array v13, v3, [I

    .line 378
    .local v13, "colors":[I
    const/4 v3, 0x3

    new-array v15, v3, [F

    fill-array-data v15, :array_0

    .line 379
    .local v15, "hsv":[F
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    array-length v3, v13

    move/from16 v0, v16

    if-ge v0, v3, :cond_0

    .line 380
    const/4 v3, 0x0

    mul-int v4, v16, v11

    add-int/lit16 v4, v4, 0xb4

    rem-int/lit16 v4, v4, 0x168

    int-to-float v4, v4

    aput v4, v15, v3

    .line 381
    invoke-static {v15}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v13, v16

    .line 379
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 383
    :cond_0
    const/4 v3, 0x0

    aget v3, v13, v3

    aput v3, v13, v12

    .line 385
    new-instance v17, Landroid/graphics/SweepGradient;

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v13, v5}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 386
    .local v17, "sweepGradient":Landroid/graphics/SweepGradient;
    new-instance v2, Landroid/graphics/RadialGradient;

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-float v5, v5

    const/4 v6, -0x1

    const v7, 0xffffff

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 387
    .local v2, "radialGradient":Landroid/graphics/RadialGradient;
    new-instance v14, Landroid/graphics/ComposeShader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    invoke-direct {v14, v0, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 389
    .local v14, "composeShader":Landroid/graphics/ComposeShader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 391
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 392
    .local v10, "canvas":Landroid/graphics/Canvas;
    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 394
    return-object v9

    .line 378
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawPointerArrow(Landroid/graphics/Canvas;III)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "color"    # I

    .prologue
    .line 353
    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 354
    .local v0, "side":I
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circleDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v2, p2, v0

    sub-int v3, p3, v0

    add-int v4, p2, v0

    add-int v5, p3, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 355
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 357
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    int-to-float v1, p2

    int-to-float v2, p3

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 359
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    int-to-float v1, p2

    int-to-float v2, p3

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 361
    return-void
.end method

.method private startColorChange(Z)V
    .locals 8
    .param p1, "start"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$500(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 404
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$502(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    .line 405
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$602(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Landroid/animation/Animator;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    .line 407
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$700(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    new-array v6, v7, [I

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    aput v0, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    .line 408
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$800(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/view/ViewGroup;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    new-array v6, v7, [F

    if-eqz p1, :cond_3

    const v0, 0x3e4ccccd    # 0.2f

    :goto_2
    aput v0, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v7

    .line 406
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 407
    :cond_2
    const/16 v0, 0x33

    goto :goto_1

    .line 408
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2
.end method


# virtual methods
.method public getColor()I
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 314
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v10, v2, v3

    .line 315
    .local v10, "centerX":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v11, v2, v3

    .line 317
    .local v11, "centerY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    sub-int v3, v10, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    sub-int v4, v11, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v16, v0

    .line 320
    .local v16, "hueAngle":F
    move/from16 v0, v16

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v13, v2, v10

    .line 321
    .local v13, "colorPointX":I
    move/from16 v0, v16

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v14, v2, v11

    .line 323
    .local v14, "colorPointY":I
    const v2, 0x3d99999a    # 0.075f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-float v3, v3

    mul-float v17, v2, v3

    .line 325
    .local v17, "pointerRadius":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14, v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->drawPointerArrow(Landroid/graphics/Canvas;III)V

    .line 331
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    add-int/2addr v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    add-int v19, v2, v3

    .line 332
    .local v19, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    sub-int v20, v11, v2

    .line 333
    .local v20, "y":I
    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    .line 334
    .local v18, "width":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    mul-int/lit8 v15, v2, 0x2

    .line 335
    .local v15, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    if-nez v2, :cond_0

    .line 336
    new-instance v2, Landroid/graphics/LinearGradient;

    move/from16 v0, v19

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    add-int v5, v19, v18

    int-to-float v5, v5

    add-int v6, v20, v15

    int-to-float v6, v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/high16 v9, -0x1000000

    aput v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    invoke-static {v9}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    .line 338
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 339
    move/from16 v0, v19

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    add-int v2, v19, v18

    int-to-float v5, v2

    add-int v2, v20, v15

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 340
    div-int/lit8 v2, v18, 0x2

    add-int v2, v2, v19

    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v5, v15

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->drawPointerArrow(Landroid/graphics/Canvas;III)V

    .line 342
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    mul-int/lit8 v2, v2, 0x2

    add-int v19, v19, v2

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    if-nez v2, :cond_1

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v12

    .line 345
    .local v12, "color":I
    new-instance v2, Landroid/graphics/LinearGradient;

    move/from16 v0, v19

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    add-int v5, v19, v18

    int-to-float v5, v5

    add-int v6, v20, v15

    int-to-float v6, v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v12, v7, v8

    const/4 v8, 0x1

    const v9, 0xffffff

    and-int/2addr v9, v12

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    .line 347
    .end local v12    # "color":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 348
    move/from16 v0, v19

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    add-int v2, v19, v18

    int-to-float v5, v2

    add-int v2, v20, v15

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 349
    div-int/lit8 v2, v18, 0x2

    add-int v2, v2, v19

    move/from16 v0, v20

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    sub-float/2addr v4, v5

    int-to-float v5, v15

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->drawPointerArrow(Landroid/graphics/Canvas;III)V

    .line 350
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 302
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 303
    .local v2, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 304
    .local v0, "heightSize":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 305
    .local v1, "size":I
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, p1, p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->measureChild(Landroid/view/View;II)V

    .line 307
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/HistorySelectorView;

    move-result-object v3

    invoke-virtual {p0, v3, p1, p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->measureChild(Landroid/view/View;II)V

    .line 309
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->setMeasuredDimension(II)V

    .line 310
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 365
    const/4 v0, 0x1

    div-int/lit8 v1, p1, 0x2

    iget v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    .line 366
    iget v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->createColorWheelBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    .line 368
    iput-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    .line 369
    iput-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    .line 370
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 417
    .local v3, "action":I
    packed-switch v3, :pswitch_data_0

    .line 490
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    :goto_1
    return v18

    .line 421
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 422
    .local v16, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 423
    .local v17, "y":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    sub-int v6, v18, v19

    .line 424
    .local v6, "centerX":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    const/high16 v19, 0x41000000    # 8.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    sub-int v7, v18, v19

    .line 425
    .local v7, "centerY":I
    sub-int v9, v16, v6

    .line 426
    .local v9, "cx":I
    sub-int v10, v17, v7

    .line 427
    .local v10, "cy":I
    mul-int v18, v9, v9

    mul-int v19, v10, v10

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 429
    .local v12, "d":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v12, v18

    if-gtz v18, :cond_2

    .line 430
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpl-double v18, v12, v18

    if-lez v18, :cond_1

    .line 431
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v12, v0

    .line 433
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    int-to-double v0, v10

    move-wide/from16 v20, v0

    int-to-double v0, v9

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v20

    const-wide v22, 0x4066800000000000L    # 180.0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v12, v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    aput v20, v18, v19

    .line 436
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    .line 437
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    .line 439
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    sub-int v18, v7, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    add-int v18, v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_5

    .line 440
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    sub-int v18, v7, v18

    sub-int v18, v17, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v19, v19, v20

    div-float v15, v18, v19

    .line 441
    .local v15, "value":F
    const/16 v18, 0x0

    cmpg-float v18, v15, v18

    if-gez v18, :cond_a

    .line 442
    const/4 v15, 0x0

    .line 446
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aput v15, v18, v19

    .line 447
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    .line 449
    .end local v15    # "value":F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    add-int v18, v18, v19

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x4

    add-int v18, v18, v19

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    sub-int v18, v7, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v18, v0

    add-int v18, v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_8

    .line 450
    :cond_6
    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v19, v0

    sub-int v19, v7, v19

    sub-int v19, v17, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v20, v20, v21

    div-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    .line 451
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_b

    .line 452
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    .line 456
    :cond_7
    :goto_3
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    .line 458
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 459
    :cond_9
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->startColorChange(Z)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->getColor()I

    move-result v8

    .line 461
    .local v8, "color":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/ThemeEditorView;->access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v2, v0, :cond_c

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/ThemeEditorView;->access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZ)V

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 443
    .end local v2    # "a":I
    .end local v8    # "color":I
    .restart local v15    # "value":F
    :cond_a
    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v18, v15, v18

    if-lez v18, :cond_4

    .line 444
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 453
    .end local v15    # "value":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_7

    .line 454
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    goto/16 :goto_3

    .line 464
    .restart local v2    # "a":I
    .restart local v8    # "color":I
    :cond_c
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v14

    .line 465
    .local v14, "red":I
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 466
    .local v11, "green":I
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 467
    .local v5, "blue":I
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$302(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-object v18, v18, v19

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget-object v18, v18, v19

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 474
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_5
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v4, v0, :cond_d

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setSelection(I)V

    .line 474
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 477
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$302(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    .line 479
    .end local v4    # "b":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->invalidate()V

    .line 482
    .end local v2    # "a":I
    .end local v5    # "blue":I
    .end local v8    # "color":I
    .end local v11    # "green":I
    .end local v14    # "red":I
    :cond_f
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 484
    .end local v6    # "centerX":I
    .end local v7    # "centerY":I
    .end local v9    # "cx":I
    .end local v10    # "cy":I
    .end local v12    # "d":D
    .end local v16    # "x":I
    .end local v17    # "y":I
    :pswitch_1
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    .line 485
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    .line 486
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    .line 487
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->startColorChange(Z)V

    goto/16 :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 11
    .param p1, "color"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 494
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 495
    .local v4, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 496
    .local v3, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 497
    .local v2, "blue":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 498
    .local v0, "a":I
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 499
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v5, v9}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$302(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    .line 500
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v5, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v5, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 504
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_0

    .line 505
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v5, v8}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$302(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    .line 509
    .end local v1    # "b":I
    :cond_1
    iput-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    .line 510
    iput-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    .line 511
    int-to-float v5, v0

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    .line 512
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    invoke-static {p1, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 513
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->invalidate()V

    .line 514
    return-void
.end method
