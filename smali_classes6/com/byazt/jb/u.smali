.class public interface abstract Lcom/byazt/jb/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/byazt/jb/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/jb/u$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/jb/u$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/jb/u;->c:Lcom/byazt/jb/u;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract c(ILcom/byazt/mk/n;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/jb/ve;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract c(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/jb/ve;",
            ">;Z)Z"
        }
    .end annotation
.end method
