.class public Lcom/j256/ormlite/logger/NullLogBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/logger/LogBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/logger/NullLogBackend$NullLogBackendFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public isLevelEnabled(Lcom/j256/ormlite/logger/Level;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    return-void
.end method
