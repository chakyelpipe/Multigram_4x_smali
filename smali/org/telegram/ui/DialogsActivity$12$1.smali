.class Lorg/telegram/ui/DialogsActivity$12$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$12;->needRemoveHint(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$12;

.field final synthetic val$did:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$12;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/DialogsActivity$12;

    .prologue
    .line 1284
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$12$1;->this$1:Lorg/telegram/ui/DialogsActivity$12;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$12$1;->val$did:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1287
    iget v0, p0, Lorg/telegram/ui/DialogsActivity$12$1;->val$did:I

    invoke-static {v0}, Lorg/telegram/messenger/query/SearchQuery;->removePeer(I)V

    .line 1288
    return-void
.end method
