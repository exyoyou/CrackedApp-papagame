.class public final Lcom/byazt/apd/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x62c,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/apd/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field public static final c:Lcom/byazt/apd/tt;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/apd/tt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/byazt/apd/tt;-><init>(Lcom/byazt/apd/tt$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/apd/tt$c;->c:Lcom/byazt/apd/tt;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c()Lcom/byazt/apd/tt;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/apd/tt$c;->c:Lcom/byazt/apd/tt;

    .line 2
    .line 3
    return-object v0
.end method
