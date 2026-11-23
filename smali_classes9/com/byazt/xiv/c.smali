.class public interface abstract Lcom/byazt/xiv/c;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAdnKeySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdnStatusMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAndUpdateInitStatus(Ljava/lang/String;)Z
.end method

.method public abstract getDexPluginStrategy(Ljava/lang/String;)Lcom/byazt/xiv/ve;
.end method
