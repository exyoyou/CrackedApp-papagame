.class public Lcom/j256/ormlite/logger/ConsoleLogBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/logger/LogBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/logger/ConsoleLogBackend$ConsoleLogBackendFactory;
    }
.end annotation


# static fields
.field private static final LINE_SEPARATOR:Ljava/lang/String;


# instance fields
.field private className:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/j256/ormlite/logger/ConsoleLogBackend;->LINE_SEPARATOR:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/j256/ormlite/logger/ConsoleLogBackend;->className:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isLevelEnabled(Lcom/j256/ormlite/logger/Level;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/j256/ormlite/logger/ConsoleLogBackend;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/j256/ormlite/logger/ConsoleLogBackend;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    sget-object v0, Lcom/j256/ormlite/logger/Level;->WARNING:Lcom/j256/ormlite/logger/Level;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/logger/Level;->isEnabled(Lcom/j256/ormlite/logger/Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/logger/ConsoleLogBackend;->log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-static {p3}, Lcom/j256/ormlite/logger/LogBackendUtil;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/logger/ConsoleLogBackend;->log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
