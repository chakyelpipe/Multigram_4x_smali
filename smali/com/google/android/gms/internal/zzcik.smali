.class final Lcom/google/android/gms/internal/zzcik;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbjh:Ljava/lang/String;

.field private synthetic zzbtj:Lcom/google/android/gms/internal/zzcez;

.field private synthetic zzbua:Lcom/google/android/gms/internal/zzcid;

.field private synthetic zzbud:Z

.field private synthetic zzbue:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcid;ZZLcom/google/android/gms/internal/zzcez;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcid;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbud:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzcik;->zzbue:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcik;->zzbtj:Lcom/google/android/gms/internal/zzcez;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcik;->zzbjh:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcid;->zzd(Lcom/google/android/gms/internal/zzcid;)Lcom/google/android/gms/internal/zzcfd;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string/jumbo v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbud:Z

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcid;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbue:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/zzcid;->zza(Lcom/google/android/gms/internal/zzcfd;Lcom/google/android/gms/common/internal/safeparcel/zza;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcid;->zze(Lcom/google/android/gms/internal/zzcid;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbtj:Lcom/google/android/gms/internal/zzcez;

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbjh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbtj:Lcom/google/android/gms/internal/zzcez;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcid;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfg;->zzdV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceh;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzcfd;->zza(Lcom/google/android/gms/internal/zzcez;Lcom/google/android/gms/internal/zzceh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string/jumbo v2, "Failed to send event to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbtj:Lcom/google/android/gms/internal/zzcez;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcik;->zzbjh:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyE()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzcfd;->zza(Lcom/google/android/gms/internal/zzcez;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
