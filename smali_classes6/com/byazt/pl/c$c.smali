.class public Lcom/byazt/pl/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x56,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/pl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:Ljava/lang/String;

.field public uj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ve:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/pl/c$c;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/byazt/pl/c$c;->ve:D

    .line 7
    .line 8
    iput-object p5, p0, Lcom/byazt/pl/c$c;->uj:Ljava/util/Map;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/byazt/pl/c$c;->tt:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
