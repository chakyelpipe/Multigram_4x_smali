.class Lorg/telegram/ui/ThemingContactsActivity$3$12;
.super Ljava/lang/Object;
.source "ThemingContactsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;


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


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingContactsActivity$3;

    .prologue
    .line 374
    iput-object p1, p0, Lorg/telegram/ui/ThemingContactsActivity$3$12;->this$1:Lorg/telegram/ui/ThemingContactsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 377
    sput p1, Lorg/telegram/ui/ActionBar/Theme;->contactsOnlineColor:I

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$3$12;->this$1:Lorg/telegram/ui/ThemingContactsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    const-string/jumbo v1, "contactsOnlineColor"

    # invokes: Lorg/telegram/ui/ThemingContactsActivity;->commitInt(Ljava/lang/String;I)V
    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ThemingContactsActivity;->access$300(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;I)V

    .line 379
    return-void
.end method
