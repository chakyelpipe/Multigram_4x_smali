.class Lorg/telegram/ui/ActionBar/BottomSheet$1;
.super Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 538
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$1;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v1, 0x1

    .line 542
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$1;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    # getter for: Lorg/telegram/ui/ActionBar/BottomSheet;->allowDrawContent:Z
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    :goto_0
    return v1

    .line 542
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
