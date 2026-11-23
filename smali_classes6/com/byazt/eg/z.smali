.class public interface abstract Lcom/byazt/eg/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/byazt/eg/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/eg/z$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/eg/z$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/eg/z;->c:Lcom/byazt/eg/z;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract c(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
