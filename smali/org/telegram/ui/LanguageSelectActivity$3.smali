.class Lorg/telegram/ui/LanguageSelectActivity$3;
.super Ljava/lang/Object;
.source "LanguageSelectActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LanguageSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searching:Z
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$000(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$100(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    if-ltz p2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$600(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 144
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$600(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    check-cast v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 151
    .restart local v0    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 152
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Z)V

    .line 153
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$800(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    .line 155
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LanguageSelectActivity;->finishFragment()V

    .line 156
    return-void

    .line 147
    :cond_2
    if-ltz p2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$700(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 148
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$3;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$700(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    check-cast v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .restart local v0    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    goto :goto_0
.end method
