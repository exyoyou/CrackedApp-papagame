.class public Lcom/byazt/an/ViewPager$sp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4f6,
        0x663
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/an/ViewPager$sp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/byazt/an/ViewPager$sp;",
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
.method public c(Landroid/os/Parcel;)Lcom/byazt/an/ViewPager$sp;
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/an/ViewPager$sp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/byazt/an/ViewPager$sp;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public c(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/byazt/an/ViewPager$sp;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/an/ViewPager$sp;

    invoke-direct {v0, p1, p2}, Lcom/byazt/an/ViewPager$sp;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public c(I)[Lcom/byazt/an/ViewPager$sp;
    .locals 0

    .line 3
    new-array p1, p1, [Lcom/byazt/an/ViewPager$sp;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/an/ViewPager$sp$1;->c(Landroid/os/Parcel;)Lcom/byazt/an/ViewPager$sp;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/byazt/an/ViewPager$sp$1;->c(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/byazt/an/ViewPager$sp;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/an/ViewPager$sp$1;->c(I)[Lcom/byazt/an/ViewPager$sp;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
