.class public Lorg/telegram/tgnet/TLRPC$TL_chat;
.super Lorg/telegram/tgnet/TLRPC$Chat;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chat"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19110
    const v0, -0x26e322ac

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_chat;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19109
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Chat;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19113
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    .line 19114
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->creator:Z

    .line 19115
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->kicked:Z

    .line 19116
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->left:Z

    .line 19117
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->admins_enabled:Z

    .line 19118
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->admin:Z

    .line 19119
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->deactivated:Z

    .line 19120
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    .line 19121
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->title:Ljava/lang/String;

    .line 19122
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 19123
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->participants_count:I

    .line 19124
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->date:I

    .line 19125
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->version:I

    .line 19126
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 19127
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputChannel;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 19129
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 19114
    goto :goto_0

    :cond_2
    move v0, v2

    .line 19115
    goto :goto_1

    :cond_3
    move v0, v2

    .line 19116
    goto :goto_2

    :cond_4
    move v0, v2

    .line 19117
    goto :goto_3

    :cond_5
    move v0, v2

    .line 19118
    goto :goto_4

    :cond_6
    move v1, v2

    .line 19119
    goto :goto_5
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 19132
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chat;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19133
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->creator:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    .line 19134
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->kicked:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    .line 19135
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->left:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    .line 19136
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->admins_enabled:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    .line 19137
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->admin:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    .line 19138
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->deactivated:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    .line 19139
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19140
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19141
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 19142
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 19143
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->participants_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19144
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19145
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19146
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 19147
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 19149
    :cond_0
    return-void

    .line 19133
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 19134
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 19135
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_2

    .line 19136
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_3

    .line 19137
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_4

    .line 19138
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_5
.end method
