.class Lorg/telegram/ui/ChannelEditInfoActivity$4;
.super Ljava/lang/Object;
.source "ChannelEditInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditInfoActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditInfoActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 333
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$4;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v7, 0x7f07032d

    const v6, 0x7f070326

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity$4;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChannelEditInfoActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 364
    :goto_0
    return-void

    .line 339
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity$4;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChannelEditInfoActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 343
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity$4;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    # getter for: Lorg/telegram/ui/ChannelEditInfoActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v2}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1700(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 344
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "FromCamera"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, "FromGalley"

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "DeletePhoto"

    const v3, 0x7f070212

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 349
    .local v1, "items":[Ljava/lang/CharSequence;
    :goto_1
    new-instance v2, Lorg/telegram/ui/ChannelEditInfoActivity$4$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$4$1;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity$4;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 363
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity$4;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 346
    .end local v1    # "items":[Ljava/lang/CharSequence;
    :cond_1
    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "FromCamera"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, "FromGalley"

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .restart local v1    # "items":[Ljava/lang/CharSequence;
    goto :goto_1
.end method
