.class public Lcom/byazt/tf/c$c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x412,
        0x32a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/tf/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field public static final c:Lcom/byazt/tf/c$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/tf/c$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/byazt/tf/c$c;-><init>(Lcom/byazt/tf/c$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/tf/c$c$c;->c:Lcom/byazt/tf/c$c;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c()Lcom/byazt/tf/c$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/tf/c$c$c;->c:Lcom/byazt/tf/c$c;

    .line 2
    .line 3
    return-object v0
.end method
