.class public Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;
.super Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatInviteEmpty"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20252
    const v0, 0x69df3769

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20251
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20256
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20257
    return-void
.end method
