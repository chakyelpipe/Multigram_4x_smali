.class Lorg/telegram/ui/PlusSettingsActivity$3$10;
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

.field final synthetic val$FLAGS:I

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity$3;Landroid/content/SharedPreferences;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PlusSettingsActivity$3;

    .prologue
    .line 934
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$10;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/PlusSettingsActivity$3$10;->val$preferences:Landroid/content/SharedPreferences;

    iput p3, p0, Lorg/telegram/ui/PlusSettingsActivity$3$10;->val$FLAGS:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 937
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$10;->val$preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "showMySettings"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 938
    .local v0, "flags":I
    iget v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$10;->val$FLAGS:I

    if-eq v1, v0, :cond_0

    .line 939
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$10;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PlusSettingsActivity;->getUserAbout()V

    .line 941
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$10;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 942
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$10;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 944
    :cond_1
    return-void
.end method
