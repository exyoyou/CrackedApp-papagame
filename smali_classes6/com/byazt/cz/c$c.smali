.class public Lcom/byazt/cz/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x25d,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/cz/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:I

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/cz/c$c;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/byazt/cz/c$c;->tt:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/cz/c$c;->ve:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
