.class public final Lcom/byazt/ydv/ve$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34a,
        0x18
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ydv/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field public static final c:Lcom/byazt/ydv/ve;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ydv/ve;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ydv/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/ydv/ve$c;->c:Lcom/byazt/ydv/ve;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c()Lcom/byazt/ydv/ve;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/ydv/ve$c;->c:Lcom/byazt/ydv/ve;

    .line 2
    .line 3
    return-object v0
.end method
