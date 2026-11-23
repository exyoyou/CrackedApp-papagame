.class public Lcom/byazt/hs/ve$ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x57c,
        0x395
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hs/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ve"
.end annotation


# static fields
.field public static final c:Lcom/byazt/hs/ve;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/hs/ve;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/byazt/hs/ve;-><init>(Lcom/byazt/hs/ve$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/hs/ve$ve;->c:Lcom/byazt/hs/ve;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c()Lcom/byazt/hs/ve;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/hs/ve$ve;->c:Lcom/byazt/hs/ve;

    .line 2
    .line 3
    return-object v0
.end method
