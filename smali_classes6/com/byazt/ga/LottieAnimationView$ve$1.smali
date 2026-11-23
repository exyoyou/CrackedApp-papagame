.class public final Lcom/byazt/ga/LottieAnimationView$ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x100,
        0x3ec
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ga/LottieAnimationView$ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/byazt/ga/LottieAnimationView$ve;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Landroid/os/Parcel;)Lcom/byazt/ga/LottieAnimationView$ve;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/ga/LottieAnimationView$ve;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/byazt/ga/LottieAnimationView$ve;-><init>(Landroid/os/Parcel;Lcom/byazt/ga/LottieAnimationView$1;)V

    return-object v0
.end method

.method public c(I)[Lcom/byazt/ga/LottieAnimationView$ve;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/byazt/ga/LottieAnimationView$ve;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/ga/LottieAnimationView$ve$1;->c(Landroid/os/Parcel;)Lcom/byazt/ga/LottieAnimationView$ve;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/ga/LottieAnimationView$ve$1;->c(I)[Lcom/byazt/ga/LottieAnimationView$ve;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
