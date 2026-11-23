.class public Lcom/byazt/zn/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f5,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/zn/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field public static c:Lcom/byazt/zn/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/zn/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/byazt/zn/c;-><init>(Lcom/byazt/zn/c$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/zn/c$c;->c:Lcom/byazt/zn/c;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c()Lcom/byazt/zn/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/zn/c$c;->c:Lcom/byazt/zn/c;

    .line 2
    .line 3
    return-object v0
.end method
