.class Lorg/telegram/ui/ThemingContactsActivity$3$14;
.super Ljava/lang/Object;
.source "ThemingContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingContactsActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingContactsActivity$3;

.field final synthetic val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingContactsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingContactsActivity$3;

    .prologue
    .line 416
    iput-object p1, p0, Lorg/telegram/ui/ThemingContactsActivity$3$14;->this$1:Lorg/telegram/ui/ThemingContactsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ThemingContactsActivity$3$14;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$3$14;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->contactsNameSize:I

    if-eq v0, v1, :cond_0

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$3$14;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v0

    sput v0, Lorg/telegram/ui/ActionBar/Theme;->contactsNameSize:I

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$3$14;->this$1:Lorg/telegram/ui/ThemingContactsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsNameSize"

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$3$14;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v2

    # invokes: Lorg/telegram/ui/ThemingContactsActivity;->commitInt(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$300(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;I)V

    .line 423
    :cond_0
    return-void
.end method
