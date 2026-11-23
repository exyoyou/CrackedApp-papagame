.class public Lcom/sigmob/sdk/videocache/sourcestorage/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/videocache/sourcestorage/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/sigmob/sdk/videocache/u;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/sdk/videocache/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "sourceInfo"
        }
    .end annotation

    .line 3
    return-void
.end method
