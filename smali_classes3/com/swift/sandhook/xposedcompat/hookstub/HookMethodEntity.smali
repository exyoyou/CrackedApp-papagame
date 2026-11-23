.class public Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backup:Ljava/lang/reflect/Method;

.field public hook:Ljava/lang/reflect/Method;

.field public isStatic:Z

.field public origin:Ljava/lang/reflect/Member;

.field public parType:[Ljava/lang/Class;

.field public retType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->origin:Ljava/lang/reflect/Member;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->hook:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->backup:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput-boolean p1, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->isStatic:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getArg(IJ)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->parType:[Ljava/lang/Class;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    invoke-static {p1, p2, p3}, Lcom/swift/sandhook/utils/ParamWrapper;->addressToObject(Ljava/lang/Class;J)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public varargs getArgs([J)[Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->parType:[Ljava/lang/Class;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-boolean v0, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->isStatic:Z

    .line 17
    .line 18
    xor-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    array-length v1, v1

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    move v2, v0

    .line 24
    :goto_0
    iget-object v3, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->parType:[Ljava/lang/Class;

    .line 25
    .line 26
    array-length v3, v3

    .line 27
    add-int/2addr v3, v0

    .line 28
    if-ge v2, v3, :cond_2

    .line 29
    .line 30
    sub-int v3, v2, v0

    .line 31
    .line 32
    aget-wide v4, p1, v2

    .line 33
    .line 34
    invoke-virtual {p0, v3, v4, v5}, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->getArg(IJ)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    aput-object v4, v1, v3

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-object v1

    .line 44
    :cond_3
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_4
    :goto_2
    new-array p1, v0, [Ljava/lang/Object;

    .line 48
    .line 49
    return-object p1
.end method

.method public varargs getArgsAddress([J[Ljava/lang/Object;)[J
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-boolean v1, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->isStatic:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    array-length v1, p1

    .line 13
    const/4 v2, 0x1

    .line 14
    add-int/2addr v1, v2

    .line 15
    new-array v1, v1, [J

    .line 16
    .line 17
    aget-wide v3, p1, v0

    .line 18
    .line 19
    aput-wide v3, v1, v0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    array-length p1, p1

    .line 23
    new-array v1, p1, [J

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    iget-object p1, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->parType:[Ljava/lang/Class;

    .line 27
    .line 28
    array-length v3, p1

    .line 29
    if-ge v0, v3, :cond_2

    .line 30
    .line 31
    add-int v3, v0, v2

    .line 32
    .line 33
    aget-object p1, p1, v0

    .line 34
    .line 35
    aget-object v4, p2, v0

    .line 36
    .line 37
    invoke-static {p1, v4}, Lcom/swift/sandhook/utils/ParamWrapper;->objectToAddress(Ljava/lang/Class;Ljava/lang/Object;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    aput-wide v4, v1, v3

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-object v1

    .line 47
    :cond_3
    :goto_1
    new-array p1, v0, [J

    .line 48
    .line 49
    return-object p1
.end method

.method public getResult(J)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->isVoid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->retType:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-static {v0, p1, p2}, Lcom/swift/sandhook/utils/ParamWrapper;->addressToObject(Ljava/lang/Class;J)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getResultAddress(Ljava/lang/Object;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->isVoid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->retType:Ljava/lang/Class;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/swift/sandhook/utils/ParamWrapper;->objectToAddress(Ljava/lang/Class;Ljava/lang/Object;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public getThis(J)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->isStatic:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-static {p1, p2}, Lcom/swift/sandhook/SandHook;->getObject(J)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public isConstructor()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->origin:Ljava/lang/reflect/Member;

    .line 2
    .line 3
    instance-of v0, v0, Ljava/lang/reflect/Constructor;

    .line 4
    .line 5
    return v0
.end method

.method public isVoid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->retType:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method
