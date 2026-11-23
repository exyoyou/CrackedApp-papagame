.class public Lcom/byazt/dk/yp$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x1b3
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/dk/yp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:Ljava/io/InputStream;

.field public tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Ljava/net/HttpURLConnection;

.field public ve:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/Map;ILjava/net/HttpURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/dk/yp$c;->c:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/dk/yp$c;->tt:Ljava/util/Map;

    .line 7
    .line 8
    iput p3, p0, Lcom/byazt/dk/yp$c;->ve:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/dk/yp$c;->uj:Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    return-void
.end method
