.class public Lorg/telegram/ui/Components/ThemeEditorView;
.super Ljava/lang/Object;
.source "ThemeEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/Components/ThemeEditorView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private currentThemeDesription:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private currentThemeDesriptionPosition:I

.field private currentThemeName:Ljava/lang/String;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

.field private final editorHeight:I

.field private final editorWidth:I

.field private hidden:Z

.field private parentActivity:Landroid/app/Activity;

.field private preferences:Landroid/content/SharedPreferences;

.field private wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x42580000    # 54.0f

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    .line 87
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    .line 127
    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ThemeEditorView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesriptionPosition:I

    return v0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/ThemeEditorView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesriptionPosition:I

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/WallpaperUpdater;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/ThemeEditorView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    return-object v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/ThemeEditorView;Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->show()V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->hide()V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ThemeEditorView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->animateToBoundsMaybe()V

    return-void
.end method

.method private animateToBoundsMaybe()V
    .locals 14

    .prologue
    .line 1171
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v7

    .line 1172
    .local v7, "startX":I
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v3

    .line 1173
    .local v3, "endX":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v8

    .line 1174
    .local v8, "startY":I
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v4

    .line 1175
    .local v4, "endY":I
    const/4 v1, 0x0

    .line 1176
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1177
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1178
    .local v5, "maxDiff":I
    const/4 v6, 0x0

    .line 1179
    .local v6, "slideOut":Z
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v5, :cond_0

    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v9, :cond_9

    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x4

    if-le v9, v10, :cond_9

    .line 1180
    :cond_0
    if-nez v1, :cond_1

    .line 1181
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_1
    const-string/jumbo v9, "sidex"

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1184
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_2

    .line 1185
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string/jumbo v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    :cond_2
    const-string/jumbo v9, "x"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v7, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    :goto_0
    if-nez v6, :cond_5

    .line 1212
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v5, :cond_3

    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v10

    if-gt v9, v10, :cond_11

    .line 1213
    :cond_3
    if-nez v1, :cond_4

    .line 1214
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_4
    const-string/jumbo v9, "sidey"

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1217
    const-string/jumbo v9, "y"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v8, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1230
    :cond_5
    if-eqz v1, :cond_8

    .line 1231
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v9, :cond_6

    .line 1232
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 1234
    :cond_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1235
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1236
    const-wide/16 v10, 0x96

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1237
    if-eqz v6, :cond_7

    .line 1238
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string/jumbo v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    new-instance v9, Lorg/telegram/ui/Components/ThemeEditorView$4;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Components/ThemeEditorView$4;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;)V

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1247
    :cond_7
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1248
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1250
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_8
    return-void

    .line 1188
    :cond_9
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v5, :cond_a

    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget v11, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_d

    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget v11, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    div-int/lit8 v11, v11, 0x4

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_d

    .line 1189
    :cond_a
    if-nez v1, :cond_b

    .line 1190
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_b
    const-string/jumbo v9, "sidex"

    const/4 v10, 0x1

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1193
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_c

    .line 1194
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string/jumbo v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    :cond_c
    const-string/jumbo v9, "x"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1197
    :cond_d
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_10

    .line 1198
    if-nez v1, :cond_e

    .line 1199
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_e
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v9, :cond_f

    .line 1202
    const-string/jumbo v9, "x"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    neg-int v12, v12

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    :goto_2
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1204
    :cond_f
    const-string/jumbo v9, "x"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1208
    :cond_10
    const-string/jumbo v9, "px"

    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v10, v7

    int-to-float v10, v10

    sub-int v11, v3, v7

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1209
    const-string/jumbo v9, "sidex"

    const/4 v10, 0x2

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 1218
    :cond_11
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v5, :cond_13

    .line 1219
    if-nez v1, :cond_12

    .line 1220
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_12
    const-string/jumbo v9, "sidey"

    const/4 v10, 0x1

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1223
    const-string/jumbo v9, "y"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v4, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1225
    :cond_13
    const-string/jumbo v9, "py"

    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v10, v8

    int-to-float v10, v10

    sub-int v11, v4, v8

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1226
    const-string/jumbo v9, "sidey"

    const/4 v10, 0x2

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1
.end method

.method public static getInstance()Lorg/telegram/ui/Components/ThemeEditorView;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    return-object v0
.end method

.method private static getSideCoord(ZIFI)I
    .locals 5
    .param p0, "isX"    # Z
    .param p1, "side"    # I
    .param p2, "p"    # F
    .param p3, "sideSize"    # I

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 1081
    if-eqz p0, :cond_1

    .line 1082
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v1, v2, p3

    .line 1087
    .local v1, "total":I
    :goto_0
    if-nez p1, :cond_2

    .line 1088
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 1094
    .local v0, "result":I
    :goto_1
    if-nez p0, :cond_0

    .line 1095
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 1097
    :cond_0
    return v0

    .line 1084
    .end local v0    # "result":I
    .end local v1    # "total":I
    :cond_1
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p3

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    sub-int v1, v2, v3

    .restart local v1    # "total":I
    goto :goto_0

    .line 1089
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 1090
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v0, v1, v2

    .restart local v0    # "result":I
    goto :goto_1

    .line 1092
    .end local v0    # "result":I
    :cond_3
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v1, v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v0, v2, v3

    .restart local v0    # "result":I
    goto :goto_1
.end method

.method private hide()V
    .locals 6

    .prologue
    .line 1101
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 1124
    :goto_0
    return-void

    .line 1105
    :cond_0
    :try_start_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1106
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    .line 1107
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "scaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    .line 1108
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1106
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1109
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1110
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1111
    new-instance v1, Lorg/telegram/ui/Components/ThemeEditorView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ThemeEditorView$3;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1119
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1120
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->hidden:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1121
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1106
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1107
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private show()V
    .locals 3

    .prologue
    .line 1127
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1131
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->hidden:Z

    .line 1133
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->showWithAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showWithAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1070
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1071
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    .line 1072
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "scaleY"

    new-array v4, v6, [F

    fill-array-data v4, :array_2

    .line 1073
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1071
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1074
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1075
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1076
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1077
    return-void

    .line 1071
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1072
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1141
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    .line 1146
    return-void

    .line 1142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WallpaperUpdater;->cleanup()V

    .line 106
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_1
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->dismiss()V

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :cond_2
    :goto_2
    iput-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    .line 124
    sput-object v3, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1165
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/WallpaperUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 1168
    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1149
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "sidex"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1150
    .local v3, "sidex":I
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "sidey"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1151
    .local v4, "sidey":I
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "px"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 1152
    .local v1, "px":F
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "py"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 1153
    .local v2, "py":F
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    invoke-static {v9, v3, v1, v6}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1154
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v8, v4, v2, v6}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1156
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1157
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setX(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 1262
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1263
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1264
    return-void
.end method

.method public setY(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1270
    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "themeName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 924
    sget-object v5, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    if-eqz v5, :cond_0

    .line 925
    sget-object v5, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ThemeEditorView;->destroy()V

    .line 927
    :cond_0
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ThemeEditorView;->hidden:Z

    .line 928
    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeName:Ljava/lang/String;

    .line 929
    new-instance v5, Lorg/telegram/ui/Components/ThemeEditorView$1;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$1;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    .line 1021
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const v6, 0x7f020264

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1022
    const-string/jumbo v5, "window"

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    .line 1024
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->themeconfig:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    .line 1026
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "sidex"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1027
    .local v3, "sidex":I
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "sidey"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1028
    .local v4, "sidey":I
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "px"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 1029
    .local v1, "px":F
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "py"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 1032
    .local v2, "py":F
    :try_start_0
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1033
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1034
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1035
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, 0x1

    iget v7, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    invoke-static {v6, v3, v1, v7}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1036
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, 0x0

    iget v7, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v6, v4, v2, v7}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1037
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x3

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1038
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1039
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x63

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1040
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v6, 0x1000208

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1041
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    new-instance v5, Lorg/telegram/ui/Components/WallpaperUpdater;

    new-instance v6, Lorg/telegram/ui/Components/ThemeEditorView$2;

    invoke-direct {v6, p0, p2}, Lorg/telegram/ui/Components/ThemeEditorView$2;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;Ljava/lang/String;)V

    invoke-direct {v5, p1, v6}, Lorg/telegram/ui/Components/WallpaperUpdater;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    .line 1064
    sput-object p0, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    .line 1065
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    .line 1066
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->showWithAnimation()V

    .line 1067
    :goto_0
    return-void

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
