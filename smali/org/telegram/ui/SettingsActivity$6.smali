.class Lorg/telegram/ui/SettingsActivity$6;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private pressCount:I

.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 664
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$6;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/SettingsActivity$6;->pressCount:I

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 670
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity$6;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->versionRow:I
    invoke-static {v7}, Lorg/telegram/ui/SettingsActivity;->access$3700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_1

    .line 671
    iget v7, p0, Lorg/telegram/ui/SettingsActivity$6;->pressCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/telegram/ui/SettingsActivity$6;->pressCount:I

    .line 672
    iget v7, p0, Lorg/telegram/ui/SettingsActivity$6;->pressCount:I

    if-lt v7, v9, :cond_0

    .line 673
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity$6;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 674
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v7, "DebugMenu"

    const v8, 0x7f0701fa

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 675
    new-array v7, v9, [Ljava/lang/CharSequence;

    const-string/jumbo v8, "DebugMenuImportContacts"

    const v9, 0x7f0701fb

    .line 676
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const-string/jumbo v5, "DebugMenuReloadContacts"

    const v8, 0x7f0701fc

    .line 677
    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v6

    new-instance v5, Lorg/telegram/ui/SettingsActivity$6$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/SettingsActivity$6$1;-><init>(Lorg/telegram/ui/SettingsActivity$6;)V

    .line 675
    invoke-virtual {v0, v7, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 688
    const-string/jumbo v5, "Cancel"

    const v7, 0x7f070105

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 689
    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$6;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 716
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :goto_0
    return v6

    .line 692
    :cond_0
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$6;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v7, "\u00af\\_(\u30c4)_/\u00af"

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    :catch_0
    move-exception v1

    .line 694
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 699
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity$6;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->bioRow:I
    invoke-static {v7}, Lorg/telegram/ui/SettingsActivity;->access$3000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_3

    .line 700
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "plusconfig"

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 701
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "showEmojiKbBtn"

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 702
    .local v4, "showEmojiBtn":Z
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 703
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "showEmojiKbBtn"

    if-nez v4, :cond_2

    move v5, v6

    :cond_2
    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 704
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 705
    new-instance v5, Lorg/telegram/ui/SettingsActivity$6$2;

    invoke-direct {v5, p0, v4}, Lorg/telegram/ui/SettingsActivity$6$2;-><init>(Lorg/telegram/ui/SettingsActivity$6;Z)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    .end local v4    # "showEmojiBtn":Z
    :cond_3
    move v6, v5

    .line 716
    goto :goto_0
.end method
