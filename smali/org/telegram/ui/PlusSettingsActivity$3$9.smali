.class Lorg/telegram/ui/PlusSettingsActivity$3$9;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PlusSettingsActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PlusSettingsActivity$3;

    .prologue
    .line 901
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$9;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 905
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$3$9;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    # getter for: Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$3$9;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    # getter for: Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 908
    :cond_0
    return-void
.end method
