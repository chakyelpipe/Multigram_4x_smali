.class final Lcom/google/android/gms/internal/zzcgt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbte:Lcom/google/android/gms/internal/zzceh;

.field private synthetic zzbtf:Lcom/google/android/gms/internal/zzcgq;

.field private synthetic zzbtg:Lcom/google/android/gms/internal/zzcek;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgq;Lcom/google/android/gms/internal/zzcek;Lcom/google/android/gms/internal/zzceh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgt;->zzbtf:Lcom/google/android/gms/internal/zzcgq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcgt;->zzbtg:Lcom/google/android/gms/internal/zzcek;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcgt;->zzbte:Lcom/google/android/gms/internal/zzceh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgt;->zzbtf:Lcom/google/android/gms/internal/zzcgq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgq;->zza(Lcom/google/android/gms/internal/zzcgq;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgl;->zzze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgt;->zzbtf:Lcom/google/android/gms/internal/zzcgq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgq;->zza(Lcom/google/android/gms/internal/zzcgq;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgt;->zzbtg:Lcom/google/android/gms/internal/zzcek;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgt;->zzbte:Lcom/google/android/gms/internal/zzceh;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgl;->zzb(Lcom/google/android/gms/internal/zzcek;Lcom/google/android/gms/internal/zzceh;)V

    return-void
.end method
