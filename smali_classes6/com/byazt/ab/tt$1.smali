.class public Lcom/byazt/ab/tt$1;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f5,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ab/tt;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/byazt/ehu/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ab/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/ab/tt;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ab/tt$1;->c:Lcom/byazt/ab/tt;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Lcom/byazt/ehu/c;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Lcom/byazt/ehu/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/byazt/ab/tt$1;->c(Ljava/lang/String;Lcom/byazt/ehu/c;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
