.class Lorg/telegram/ui/ArticleViewer$4;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->showPopup(Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 903
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$4;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$4;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$4;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$3202(Lorg/telegram/ui/ArticleViewer;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;

    .line 908
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$4;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 909
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$4;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$3302(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)Landroid/view/View;

    .line 911
    :cond_0
    return-void
.end method
