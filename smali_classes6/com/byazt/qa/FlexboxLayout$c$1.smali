.class public Lcom/byazt/qa/FlexboxLayout$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x256,
        0x257
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/qa/FlexboxLayout$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/byazt/qa/FlexboxLayout$c;",
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
.method public c(Landroid/os/Parcel;)Lcom/byazt/qa/FlexboxLayout$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/qa/FlexboxLayout$c;

    invoke-direct {v0, p1}, Lcom/byazt/qa/FlexboxLayout$c;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public c(I)[Lcom/byazt/qa/FlexboxLayout$c;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/byazt/qa/FlexboxLayout$c;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/qa/FlexboxLayout$c$1;->c(Landroid/os/Parcel;)Lcom/byazt/qa/FlexboxLayout$c;

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
    invoke-virtual {p0, p1}, Lcom/byazt/qa/FlexboxLayout$c$1;->c(I)[Lcom/byazt/qa/FlexboxLayout$c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
