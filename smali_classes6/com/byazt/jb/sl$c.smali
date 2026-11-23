.class public final Lcom/byazt/jb/sl$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f,
        0x39d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/jb/sl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final c:[Lcom/byazt/jb/sl$c;

.field public final tt:I

.field public final ve:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lcom/byazt/jb/sl$c;

    .line 2
    iput-object v0, p0, Lcom/byazt/jb/sl$c;->c:[Lcom/byazt/jb/sl$c;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/byazt/jb/sl$c;->tt:I

    .line 4
    iput v0, p0, Lcom/byazt/jb/sl$c;->ve:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/byazt/jb/sl$c;->c:[Lcom/byazt/jb/sl$c;

    .line 7
    iput p1, p0, Lcom/byazt/jb/sl$c;->tt:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 8
    :cond_0
    iput p1, p0, Lcom/byazt/jb/sl$c;->ve:I

    return-void
.end method
