.class Lorg/telegram/ui/ArticleViewer$15;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
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
    .line 2220
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$15;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 2223
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$15;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$15;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->nightModeEnabled:Z
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5500(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # setter for: Lorg/telegram/ui/ArticleViewer;->nightModeEnabled:Z
    invoke-static {v2, v0}, Lorg/telegram/ui/ArticleViewer;->access$5502(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 2224
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "articles"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "nightModeEnabled"

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$15;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->nightModeEnabled:Z
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$5500(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2225
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$15;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->updateNightModeButton()V
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5600(Lorg/telegram/ui/ArticleViewer;)V

    .line 2226
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$15;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->updatePaintColors()V
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5700(Lorg/telegram/ui/ArticleViewer;)V

    .line 2227
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$15;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5800(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 2228
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$15;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->nightModeEnabled:Z
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5500(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2229
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$15;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->showNightModeHint()V
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5900(Lorg/telegram/ui/ArticleViewer;)V

    .line 2231
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2223
    goto :goto_0
.end method
