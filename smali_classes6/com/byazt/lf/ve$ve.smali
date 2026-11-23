.class public Lcom/byazt/lf/ve$ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x20e,
        0x395
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/lf/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ve"
.end annotation


# static fields
.field public static final c:Lcom/byazt/lf/ve;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/lf/ve;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/byazt/lf/ve;-><init>(Lcom/byazt/lf/ve$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/lf/ve$ve;->c:Lcom/byazt/lf/ve;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c()Lcom/byazt/lf/ve;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/lf/ve$ve;->c:Lcom/byazt/lf/ve;

    .line 2
    .line 3
    return-object v0
.end method
