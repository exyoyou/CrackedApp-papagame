.class public Lcom/j256/ormlite/logger/LogbackLogBackend$LogbackLogBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/logger/LogBackendFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/logger/LogbackLogBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogbackLogBackendFactory"
.end annotation


# instance fields
.field private final factory:Lorg/slf4j/ILoggerFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactory()Lorg/slf4j/ILoggerFactory;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/j256/ormlite/logger/LogbackLogBackend$LogbackLogBackendFactory;->factory:Lorg/slf4j/ILoggerFactory;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public createLogBackend(Ljava/lang/String;)Lcom/j256/ormlite/logger/LogBackend;
    .locals 2

    .line 1
    new-instance v0, Lcom/j256/ormlite/logger/LogbackLogBackend;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/j256/ormlite/logger/LogbackLogBackend$LogbackLogBackendFactory;->factory:Lorg/slf4j/ILoggerFactory;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Lorg/slf4j/ILoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Lcom/j256/ormlite/logger/LogbackLogBackend;-><init>(Lorg/slf4j/Logger;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
