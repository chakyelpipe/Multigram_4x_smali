.class public Lorg/telegram/ui/Components/AvatarUpdater;
.super Ljava/lang/Object;
.source "AvatarUpdater.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;
    }
.end annotation


# instance fields
.field private bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field private clearAfterUpdate:Z

.field public currentPicturePath:Ljava/lang/String;

.field public delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

.field public parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field picturePath:Ljava/io/File;

.field public returnOnly:Z

.field private smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field public uploadingAvatar:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->picturePath:Ljava/io/File;

    .line 51
    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 53
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->clearAfterUpdate:Z

    .line 54
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->returnOnly:Z

    .line 56
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/AvatarUpdater;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/AvatarUpdater;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarUpdater;->processBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private processBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v5, 0x140

    const/16 v3, 0x50

    const/high16 v1, 0x44480000    # 800.0f

    const/high16 v0, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    .line 204
    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-static {p1, v0, v0, v3, v4}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object v0, p1

    move v2, v1

    move v6, v5

    .line 208
    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_0

    .line 211
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->returnOnly:Z

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;->didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    goto :goto_0

    .line 216
    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    .line 218
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 219
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 220
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    const/4 v2, 0x1

    const/high16 v3, 0x1000000

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0
.end method

.method private startCrop(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/high16 v6, 0x44480000    # 800.0f

    .line 129
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    .line 130
    .local v0, "activity":Lorg/telegram/ui/LaunchActivity;
    if-nez v0, :cond_0

    .line 147
    .end local v0    # "activity":Lorg/telegram/ui/LaunchActivity;
    :goto_0
    return-void

    .line 133
    .restart local v0    # "activity":Lorg/telegram/ui/LaunchActivity;
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v1, "args":Landroid/os/Bundle;
    if-eqz p1, :cond_2

    .line 135
    const-string/jumbo v5, "photoPath"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_1
    :goto_1
    new-instance v4, Lorg/telegram/ui/PhotoCropActivity;

    invoke-direct {v4, v1}, Lorg/telegram/ui/PhotoCropActivity;-><init>(Landroid/os/Bundle;)V

    .line 140
    .local v4, "photoCropActivity":Lorg/telegram/ui/PhotoCropActivity;
    invoke-virtual {v4, p0}, Lorg/telegram/ui/PhotoCropActivity;->setDelegate(Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;)V

    .line 141
    invoke-virtual {v0, v4}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v0    # "activity":Lorg/telegram/ui/LaunchActivity;
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v4    # "photoCropActivity":Lorg/telegram/ui/PhotoCropActivity;
    :catch_0
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 144
    const/4 v5, 0x1

    invoke-static {p1, p2, v6, v6, v5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 145
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AvatarUpdater;->processBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 136
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "activity":Lorg/telegram/ui/LaunchActivity;
    .restart local v1    # "args":Landroid/os/Bundle;
    :cond_2
    if-eqz p2, :cond_1

    .line 137
    :try_start_1
    const-string/jumbo v5, "photoUri"

    invoke-virtual {v1, v5, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->clearAfterUpdate:Z

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 65
    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    goto :goto_0
.end method

.method public didFinishEdit(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarUpdater;->processBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 232
    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    if-ne p1, v1, :cond_2

    .line 233
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/String;

    .line 234
    .local v0, "location":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 236
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 237
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    if-eqz v1, :cond_0

    .line 238
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-interface {v2, v1, v3, v4}, Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;->didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 240
    :cond_0
    iput-object v5, p0, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    .line 241
    iget-boolean v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->clearAfterUpdate:Z

    if-eqz v1, :cond_1

    .line 242
    iput-object v5, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 243
    iput-object v5, p0, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 258
    .end local v0    # "location":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    if-ne p1, v1, :cond_1

    .line 247
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/String;

    .line 248
    .restart local v0    # "location":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 250
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 251
    iput-object v5, p0, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    .line 252
    iget-boolean v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->clearAfterUpdate:Z

    if-eqz v1, :cond_1

    .line 253
    iput-object v5, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 254
    iput-object v5, p0, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 150
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 151
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 152
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 153
    const/4 v7, 0x0

    .line 155
    .local v7, "orientation":I
    :try_start_0
    new-instance v11, Landroid/media/ExifInterface;

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-direct {v11, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 156
    .local v11, "ei":Landroid/media/ExifInterface;
    const-string/jumbo v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 157
    .local v12, "exif":I
    packed-switch v12, :pswitch_data_0

    .line 171
    .end local v11    # "ei":Landroid/media/ExifInterface;
    .end local v12    # "exif":I
    :goto_0
    :pswitch_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v9, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZ)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lorg/telegram/ui/Components/AvatarUpdater$2;

    invoke-direct {v4, p0, v9}, Lorg/telegram/ui/Components/AvatarUpdater$2;-><init>(Lorg/telegram/ui/Components/AvatarUpdater;Ljava/util/ArrayList;)V

    const/4 v5, 0x0

    move-object v1, v9

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 201
    .end local v7    # "orientation":I
    .end local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    :goto_1
    return-void

    .line 159
    .restart local v7    # "orientation":I
    .restart local v11    # "ei":Landroid/media/ExifInterface;
    .restart local v12    # "exif":I
    :pswitch_1
    const/16 v7, 0x5a

    .line 160
    goto :goto_0

    .line 162
    :pswitch_2
    const/16 v7, 0xb4

    .line 163
    goto :goto_0

    .line 165
    :pswitch_3
    const/16 v7, 0x10e

    goto :goto_0

    .line 168
    .end local v11    # "ei":Landroid/media/ExifInterface;
    .end local v12    # "exif":I
    :catch_0
    move-exception v10

    .line 169
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 194
    .end local v7    # "orientation":I
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 195
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/AvatarUpdater;->startCrop(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openCamera()V
    .locals 7

    .prologue
    .line 70
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "android.permission.CAMERA"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "android.permission.CAMERA"

    aput-object v6, v4, v5

    const/16 v5, 0x13

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "takePictureIntent":Landroid/content/Intent;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath()Ljava/io/File;

    move-result-object v1

    .line 80
    .local v1, "image":Ljava/io/File;
    if-eqz v1, :cond_3

    .line 81
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_4

    .line 82
    const-string/jumbo v3, "output"

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "org.telegram.multi.provider"

    invoke-static {v4, v5, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 90
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v4, 0xd

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 86
    :cond_4
    const-string/jumbo v3, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public openGallery()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 97
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v2, v4

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 125
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v4, v4, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;-><init>(ZZZLorg/telegram/ui/ChatActivity;)V

    .line 104
    .local v0, "fragment":Lorg/telegram/ui/PhotoAlbumPickerActivity;
    new-instance v1, Lorg/telegram/ui/Components/AvatarUpdater$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/AvatarUpdater$1;-><init>(Lorg/telegram/ui/Components/AvatarUpdater;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;)V

    .line 124
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method
