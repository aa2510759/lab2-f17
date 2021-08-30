
_testFile:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
    return n_start + recursive(n_start - 1);
}
#pragma GCC pop_options

int main(int argc, char *argv[])
{
    1000:	55                   	push   %ebp
    1001:	89 e5                	mov    %esp,%ebp
    1003:	56                   	push   %esi
    int m;
    int n_start = 1;
    int i = 0;
    int new_n = 0;
    int x = 1;
    1004:	be 01 00 00 00       	mov    $0x1,%esi
{
    1009:	53                   	push   %ebx
    int n_start = 1;
    100a:	bb 01 00 00 00       	mov    $0x1,%ebx
{
    100f:	83 e4 f0             	and    $0xfffffff0,%esp
    1012:	83 ec 10             	sub    $0x10,%esp
    printf(1, "The program is stXarting at 9 levels and incrementing in multiplies of 9\n");
    1015:	c7 44 24 04 e4 17 00 	movl   $0x17e4,0x4(%esp)
    101c:	00 
    101d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1024:	e8 17 04 00 00       	call   1440 <printf>
    for (i = 0; i < 4; i++)
    {
        printf(1, "Iteration: # %d\n", x);
    1029:	89 74 24 08          	mov    %esi,0x8(%esp)
        printf(1, "This Program is Recursing at %d levels\n", n_start);
        m = recursive(n_start);
        printf(1, "The Yielded value is %d\n", m);
        new_n = n_start * 6;
        n_start = new_n;
        x++;
    102d:	83 c6 01             	add    $0x1,%esi
        printf(1, "Iteration: # %d\n", x);
    1030:	c7 44 24 04 58 18 00 	movl   $0x1858,0x4(%esp)
    1037:	00 
    1038:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    103f:	e8 fc 03 00 00       	call   1440 <printf>
        printf(1, "This Program is Recursing at %d levels\n", n_start);
    1044:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    1048:	c7 44 24 04 30 18 00 	movl   $0x1830,0x4(%esp)
    104f:	00 
    1050:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1057:	e8 e4 03 00 00       	call   1440 <printf>
        m = recursive(n_start);
    105c:	89 1c 24             	mov    %ebx,(%esp)
        new_n = n_start * 6;
    105f:	8d 1c 5b             	lea    (%ebx,%ebx,2),%ebx
        m = recursive(n_start);
    1062:	e8 29 00 00 00       	call   1090 <recursive>
        new_n = n_start * 6;
    1067:	01 db                	add    %ebx,%ebx
        printf(1, "The Yielded value is %d\n", m);
    1069:	c7 44 24 04 69 18 00 	movl   $0x1869,0x4(%esp)
    1070:	00 
    1071:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1078:	89 44 24 08          	mov    %eax,0x8(%esp)
    107c:	e8 bf 03 00 00       	call   1440 <printf>
    for (i = 0; i < 4; i++)
    1081:	83 fe 05             	cmp    $0x5,%esi
    1084:	75 a3                	jne    1029 <main+0x29>
    }
    exit();
    1086:	e8 57 02 00 00       	call   12e2 <exit>
    108b:	66 90                	xchg   %ax,%ax
    108d:	66 90                	xchg   %ax,%ax
    108f:	90                   	nop

00001090 <recursive>:
{
    1090:	55                   	push   %ebp
    1091:	89 e5                	mov    %esp,%ebp
    1093:	83 ec 18             	sub    $0x18,%esp
    if (n_start == 0)
    1096:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    109a:	75 07                	jne    10a3 <recursive+0x13>
        return 0;
    109c:	b8 00 00 00 00       	mov    $0x0,%eax
    10a1:	eb 13                	jmp    10b6 <recursive+0x26>
    return n_start + recursive(n_start - 1);
    10a3:	8b 45 08             	mov    0x8(%ebp),%eax
    10a6:	83 e8 01             	sub    $0x1,%eax
    10a9:	89 04 24             	mov    %eax,(%esp)
    10ac:	e8 df ff ff ff       	call   1090 <recursive>
    10b1:	8b 55 08             	mov    0x8(%ebp),%edx
    10b4:	01 d0                	add    %edx,%eax
}
    10b6:	c9                   	leave  
    10b7:	c3                   	ret    
    10b8:	66 90                	xchg   %ax,%ax
    10ba:	66 90                	xchg   %ax,%ax
    10bc:	66 90                	xchg   %ax,%ax
    10be:	66 90                	xchg   %ax,%ax

000010c0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    10c0:	55                   	push   %ebp
    10c1:	89 e5                	mov    %esp,%ebp
    10c3:	8b 45 08             	mov    0x8(%ebp),%eax
    10c6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    10c9:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    10ca:	89 c2                	mov    %eax,%edx
    10cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10d0:	83 c1 01             	add    $0x1,%ecx
    10d3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    10d7:	83 c2 01             	add    $0x1,%edx
    10da:	84 db                	test   %bl,%bl
    10dc:	88 5a ff             	mov    %bl,-0x1(%edx)
    10df:	75 ef                	jne    10d0 <strcpy+0x10>
    ;
  return os;
}
    10e1:	5b                   	pop    %ebx
    10e2:	5d                   	pop    %ebp
    10e3:	c3                   	ret    
    10e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000010f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    10f0:	55                   	push   %ebp
    10f1:	89 e5                	mov    %esp,%ebp
    10f3:	8b 55 08             	mov    0x8(%ebp),%edx
    10f6:	53                   	push   %ebx
    10f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    10fa:	0f b6 02             	movzbl (%edx),%eax
    10fd:	84 c0                	test   %al,%al
    10ff:	74 2d                	je     112e <strcmp+0x3e>
    1101:	0f b6 19             	movzbl (%ecx),%ebx
    1104:	38 d8                	cmp    %bl,%al
    1106:	74 0e                	je     1116 <strcmp+0x26>
    1108:	eb 2b                	jmp    1135 <strcmp+0x45>
    110a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1110:	38 c8                	cmp    %cl,%al
    1112:	75 15                	jne    1129 <strcmp+0x39>
    p++, q++;
    1114:	89 d9                	mov    %ebx,%ecx
    1116:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    1119:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    111c:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    111f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
    1123:	84 c0                	test   %al,%al
    1125:	75 e9                	jne    1110 <strcmp+0x20>
    1127:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    1129:	29 c8                	sub    %ecx,%eax
}
    112b:	5b                   	pop    %ebx
    112c:	5d                   	pop    %ebp
    112d:	c3                   	ret    
    112e:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
    1131:	31 c0                	xor    %eax,%eax
    1133:	eb f4                	jmp    1129 <strcmp+0x39>
    1135:	0f b6 cb             	movzbl %bl,%ecx
    1138:	eb ef                	jmp    1129 <strcmp+0x39>
    113a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001140 <strlen>:

uint
strlen(char *s)
{
    1140:	55                   	push   %ebp
    1141:	89 e5                	mov    %esp,%ebp
    1143:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    1146:	80 39 00             	cmpb   $0x0,(%ecx)
    1149:	74 12                	je     115d <strlen+0x1d>
    114b:	31 d2                	xor    %edx,%edx
    114d:	8d 76 00             	lea    0x0(%esi),%esi
    1150:	83 c2 01             	add    $0x1,%edx
    1153:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    1157:	89 d0                	mov    %edx,%eax
    1159:	75 f5                	jne    1150 <strlen+0x10>
    ;
  return n;
}
    115b:	5d                   	pop    %ebp
    115c:	c3                   	ret    
  for(n = 0; s[n]; n++)
    115d:	31 c0                	xor    %eax,%eax
}
    115f:	5d                   	pop    %ebp
    1160:	c3                   	ret    
    1161:	eb 0d                	jmp    1170 <memset>
    1163:	90                   	nop
    1164:	90                   	nop
    1165:	90                   	nop
    1166:	90                   	nop
    1167:	90                   	nop
    1168:	90                   	nop
    1169:	90                   	nop
    116a:	90                   	nop
    116b:	90                   	nop
    116c:	90                   	nop
    116d:	90                   	nop
    116e:	90                   	nop
    116f:	90                   	nop

00001170 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1170:	55                   	push   %ebp
    1171:	89 e5                	mov    %esp,%ebp
    1173:	8b 55 08             	mov    0x8(%ebp),%edx
    1176:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    1177:	8b 4d 10             	mov    0x10(%ebp),%ecx
    117a:	8b 45 0c             	mov    0xc(%ebp),%eax
    117d:	89 d7                	mov    %edx,%edi
    117f:	fc                   	cld    
    1180:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1182:	89 d0                	mov    %edx,%eax
    1184:	5f                   	pop    %edi
    1185:	5d                   	pop    %ebp
    1186:	c3                   	ret    
    1187:	89 f6                	mov    %esi,%esi
    1189:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001190 <strchr>:

char*
strchr(const char *s, char c)
{
    1190:	55                   	push   %ebp
    1191:	89 e5                	mov    %esp,%ebp
    1193:	8b 45 08             	mov    0x8(%ebp),%eax
    1196:	53                   	push   %ebx
    1197:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
    119a:	0f b6 18             	movzbl (%eax),%ebx
    119d:	84 db                	test   %bl,%bl
    119f:	74 1d                	je     11be <strchr+0x2e>
    if(*s == c)
    11a1:	38 d3                	cmp    %dl,%bl
    11a3:	89 d1                	mov    %edx,%ecx
    11a5:	75 0d                	jne    11b4 <strchr+0x24>
    11a7:	eb 17                	jmp    11c0 <strchr+0x30>
    11a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11b0:	38 ca                	cmp    %cl,%dl
    11b2:	74 0c                	je     11c0 <strchr+0x30>
  for(; *s; s++)
    11b4:	83 c0 01             	add    $0x1,%eax
    11b7:	0f b6 10             	movzbl (%eax),%edx
    11ba:	84 d2                	test   %dl,%dl
    11bc:	75 f2                	jne    11b0 <strchr+0x20>
      return (char*)s;
  return 0;
    11be:	31 c0                	xor    %eax,%eax
}
    11c0:	5b                   	pop    %ebx
    11c1:	5d                   	pop    %ebp
    11c2:	c3                   	ret    
    11c3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000011d0 <gets>:

char*
gets(char *buf, int max)
{
    11d0:	55                   	push   %ebp
    11d1:	89 e5                	mov    %esp,%ebp
    11d3:	57                   	push   %edi
    11d4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    11d5:	31 f6                	xor    %esi,%esi
{
    11d7:	53                   	push   %ebx
    11d8:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
    11db:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
    11de:	eb 31                	jmp    1211 <gets+0x41>
    cc = read(0, &c, 1);
    11e0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    11e7:	00 
    11e8:	89 7c 24 04          	mov    %edi,0x4(%esp)
    11ec:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    11f3:	e8 02 01 00 00       	call   12fa <read>
    if(cc < 1)
    11f8:	85 c0                	test   %eax,%eax
    11fa:	7e 1d                	jle    1219 <gets+0x49>
      break;
    buf[i++] = c;
    11fc:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
    1200:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
    1202:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
    1205:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
    1207:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    120b:	74 0c                	je     1219 <gets+0x49>
    120d:	3c 0a                	cmp    $0xa,%al
    120f:	74 08                	je     1219 <gets+0x49>
  for(i=0; i+1 < max; ){
    1211:	8d 5e 01             	lea    0x1(%esi),%ebx
    1214:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1217:	7c c7                	jl     11e0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    1219:	8b 45 08             	mov    0x8(%ebp),%eax
    121c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    1220:	83 c4 2c             	add    $0x2c,%esp
    1223:	5b                   	pop    %ebx
    1224:	5e                   	pop    %esi
    1225:	5f                   	pop    %edi
    1226:	5d                   	pop    %ebp
    1227:	c3                   	ret    
    1228:	90                   	nop
    1229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001230 <stat>:

int
stat(char *n, struct stat *st)
{
    1230:	55                   	push   %ebp
    1231:	89 e5                	mov    %esp,%ebp
    1233:	56                   	push   %esi
    1234:	53                   	push   %ebx
    1235:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1238:	8b 45 08             	mov    0x8(%ebp),%eax
    123b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1242:	00 
    1243:	89 04 24             	mov    %eax,(%esp)
    1246:	e8 d7 00 00 00       	call   1322 <open>
  if(fd < 0)
    124b:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
    124d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
    124f:	78 27                	js     1278 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    1251:	8b 45 0c             	mov    0xc(%ebp),%eax
    1254:	89 1c 24             	mov    %ebx,(%esp)
    1257:	89 44 24 04          	mov    %eax,0x4(%esp)
    125b:	e8 da 00 00 00       	call   133a <fstat>
  close(fd);
    1260:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    1263:	89 c6                	mov    %eax,%esi
  close(fd);
    1265:	e8 a0 00 00 00       	call   130a <close>
  return r;
    126a:	89 f0                	mov    %esi,%eax
}
    126c:	83 c4 10             	add    $0x10,%esp
    126f:	5b                   	pop    %ebx
    1270:	5e                   	pop    %esi
    1271:	5d                   	pop    %ebp
    1272:	c3                   	ret    
    1273:	90                   	nop
    1274:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1278:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    127d:	eb ed                	jmp    126c <stat+0x3c>
    127f:	90                   	nop

00001280 <atoi>:

int
atoi(const char *s)
{
    1280:	55                   	push   %ebp
    1281:	89 e5                	mov    %esp,%ebp
    1283:	8b 4d 08             	mov    0x8(%ebp),%ecx
    1286:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1287:	0f be 11             	movsbl (%ecx),%edx
    128a:	8d 42 d0             	lea    -0x30(%edx),%eax
    128d:	3c 09                	cmp    $0x9,%al
  n = 0;
    128f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    1294:	77 17                	ja     12ad <atoi+0x2d>
    1296:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    1298:	83 c1 01             	add    $0x1,%ecx
    129b:	8d 04 80             	lea    (%eax,%eax,4),%eax
    129e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    12a2:	0f be 11             	movsbl (%ecx),%edx
    12a5:	8d 5a d0             	lea    -0x30(%edx),%ebx
    12a8:	80 fb 09             	cmp    $0x9,%bl
    12ab:	76 eb                	jbe    1298 <atoi+0x18>
  return n;
}
    12ad:	5b                   	pop    %ebx
    12ae:	5d                   	pop    %ebp
    12af:	c3                   	ret    

000012b0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    12b0:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    12b1:	31 d2                	xor    %edx,%edx
{
    12b3:	89 e5                	mov    %esp,%ebp
    12b5:	56                   	push   %esi
    12b6:	8b 45 08             	mov    0x8(%ebp),%eax
    12b9:	53                   	push   %ebx
    12ba:	8b 5d 10             	mov    0x10(%ebp),%ebx
    12bd:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
    12c0:	85 db                	test   %ebx,%ebx
    12c2:	7e 12                	jle    12d6 <memmove+0x26>
    12c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    12c8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    12cc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    12cf:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    12d2:	39 da                	cmp    %ebx,%edx
    12d4:	75 f2                	jne    12c8 <memmove+0x18>
  return vdst;
}
    12d6:	5b                   	pop    %ebx
    12d7:	5e                   	pop    %esi
    12d8:	5d                   	pop    %ebp
    12d9:	c3                   	ret    

000012da <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    12da:	b8 01 00 00 00       	mov    $0x1,%eax
    12df:	cd 40                	int    $0x40
    12e1:	c3                   	ret    

000012e2 <exit>:
SYSCALL(exit)
    12e2:	b8 02 00 00 00       	mov    $0x2,%eax
    12e7:	cd 40                	int    $0x40
    12e9:	c3                   	ret    

000012ea <wait>:
SYSCALL(wait)
    12ea:	b8 03 00 00 00       	mov    $0x3,%eax
    12ef:	cd 40                	int    $0x40
    12f1:	c3                   	ret    

000012f2 <pipe>:
SYSCALL(pipe)
    12f2:	b8 04 00 00 00       	mov    $0x4,%eax
    12f7:	cd 40                	int    $0x40
    12f9:	c3                   	ret    

000012fa <read>:
SYSCALL(read)
    12fa:	b8 05 00 00 00       	mov    $0x5,%eax
    12ff:	cd 40                	int    $0x40
    1301:	c3                   	ret    

00001302 <write>:
SYSCALL(write)
    1302:	b8 10 00 00 00       	mov    $0x10,%eax
    1307:	cd 40                	int    $0x40
    1309:	c3                   	ret    

0000130a <close>:
SYSCALL(close)
    130a:	b8 15 00 00 00       	mov    $0x15,%eax
    130f:	cd 40                	int    $0x40
    1311:	c3                   	ret    

00001312 <kill>:
SYSCALL(kill)
    1312:	b8 06 00 00 00       	mov    $0x6,%eax
    1317:	cd 40                	int    $0x40
    1319:	c3                   	ret    

0000131a <exec>:
SYSCALL(exec)
    131a:	b8 07 00 00 00       	mov    $0x7,%eax
    131f:	cd 40                	int    $0x40
    1321:	c3                   	ret    

00001322 <open>:
SYSCALL(open)
    1322:	b8 0f 00 00 00       	mov    $0xf,%eax
    1327:	cd 40                	int    $0x40
    1329:	c3                   	ret    

0000132a <mknod>:
SYSCALL(mknod)
    132a:	b8 11 00 00 00       	mov    $0x11,%eax
    132f:	cd 40                	int    $0x40
    1331:	c3                   	ret    

00001332 <unlink>:
SYSCALL(unlink)
    1332:	b8 12 00 00 00       	mov    $0x12,%eax
    1337:	cd 40                	int    $0x40
    1339:	c3                   	ret    

0000133a <fstat>:
SYSCALL(fstat)
    133a:	b8 08 00 00 00       	mov    $0x8,%eax
    133f:	cd 40                	int    $0x40
    1341:	c3                   	ret    

00001342 <link>:
SYSCALL(link)
    1342:	b8 13 00 00 00       	mov    $0x13,%eax
    1347:	cd 40                	int    $0x40
    1349:	c3                   	ret    

0000134a <mkdir>:
SYSCALL(mkdir)
    134a:	b8 14 00 00 00       	mov    $0x14,%eax
    134f:	cd 40                	int    $0x40
    1351:	c3                   	ret    

00001352 <chdir>:
SYSCALL(chdir)
    1352:	b8 09 00 00 00       	mov    $0x9,%eax
    1357:	cd 40                	int    $0x40
    1359:	c3                   	ret    

0000135a <dup>:
SYSCALL(dup)
    135a:	b8 0a 00 00 00       	mov    $0xa,%eax
    135f:	cd 40                	int    $0x40
    1361:	c3                   	ret    

00001362 <getpid>:
SYSCALL(getpid)
    1362:	b8 0b 00 00 00       	mov    $0xb,%eax
    1367:	cd 40                	int    $0x40
    1369:	c3                   	ret    

0000136a <sbrk>:
SYSCALL(sbrk)
    136a:	b8 0c 00 00 00       	mov    $0xc,%eax
    136f:	cd 40                	int    $0x40
    1371:	c3                   	ret    

00001372 <sleep>:
SYSCALL(sleep)
    1372:	b8 0d 00 00 00       	mov    $0xd,%eax
    1377:	cd 40                	int    $0x40
    1379:	c3                   	ret    

0000137a <uptime>:
SYSCALL(uptime)
    137a:	b8 0e 00 00 00       	mov    $0xe,%eax
    137f:	cd 40                	int    $0x40
    1381:	c3                   	ret    

00001382 <shm_open>:
SYSCALL(shm_open)
    1382:	b8 16 00 00 00       	mov    $0x16,%eax
    1387:	cd 40                	int    $0x40
    1389:	c3                   	ret    

0000138a <shm_close>:
SYSCALL(shm_close)	
    138a:	b8 17 00 00 00       	mov    $0x17,%eax
    138f:	cd 40                	int    $0x40
    1391:	c3                   	ret    
    1392:	66 90                	xchg   %ax,%ax
    1394:	66 90                	xchg   %ax,%ax
    1396:	66 90                	xchg   %ax,%ax
    1398:	66 90                	xchg   %ax,%ax
    139a:	66 90                	xchg   %ax,%ax
    139c:	66 90                	xchg   %ax,%ax
    139e:	66 90                	xchg   %ax,%ax

000013a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    13a0:	55                   	push   %ebp
    13a1:	89 e5                	mov    %esp,%ebp
    13a3:	57                   	push   %edi
    13a4:	56                   	push   %esi
    13a5:	89 c6                	mov    %eax,%esi
    13a7:	53                   	push   %ebx
    13a8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    13ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
    13ae:	85 db                	test   %ebx,%ebx
    13b0:	74 09                	je     13bb <printint+0x1b>
    13b2:	89 d0                	mov    %edx,%eax
    13b4:	c1 e8 1f             	shr    $0x1f,%eax
    13b7:	84 c0                	test   %al,%al
    13b9:	75 75                	jne    1430 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    13bb:	89 d0                	mov    %edx,%eax
  neg = 0;
    13bd:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    13c4:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
    13c7:	31 ff                	xor    %edi,%edi
    13c9:	89 ce                	mov    %ecx,%esi
    13cb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    13ce:	eb 02                	jmp    13d2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
    13d0:	89 cf                	mov    %ecx,%edi
    13d2:	31 d2                	xor    %edx,%edx
    13d4:	f7 f6                	div    %esi
    13d6:	8d 4f 01             	lea    0x1(%edi),%ecx
    13d9:	0f b6 92 89 18 00 00 	movzbl 0x1889(%edx),%edx
  }while((x /= base) != 0);
    13e0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    13e2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    13e5:	75 e9                	jne    13d0 <printint+0x30>
  if(neg)
    13e7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
    13ea:	89 c8                	mov    %ecx,%eax
    13ec:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
    13ef:	85 d2                	test   %edx,%edx
    13f1:	74 08                	je     13fb <printint+0x5b>
    buf[i++] = '-';
    13f3:	8d 4f 02             	lea    0x2(%edi),%ecx
    13f6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
    13fb:	8d 79 ff             	lea    -0x1(%ecx),%edi
    13fe:	66 90                	xchg   %ax,%ax
    1400:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
    1405:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
    1408:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    140f:	00 
    1410:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1414:	89 34 24             	mov    %esi,(%esp)
    1417:	88 45 d7             	mov    %al,-0x29(%ebp)
    141a:	e8 e3 fe ff ff       	call   1302 <write>
  while(--i >= 0)
    141f:	83 ff ff             	cmp    $0xffffffff,%edi
    1422:	75 dc                	jne    1400 <printint+0x60>
    putc(fd, buf[i]);
}
    1424:	83 c4 4c             	add    $0x4c,%esp
    1427:	5b                   	pop    %ebx
    1428:	5e                   	pop    %esi
    1429:	5f                   	pop    %edi
    142a:	5d                   	pop    %ebp
    142b:	c3                   	ret    
    142c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
    1430:	89 d0                	mov    %edx,%eax
    1432:	f7 d8                	neg    %eax
    neg = 1;
    1434:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    143b:	eb 87                	jmp    13c4 <printint+0x24>
    143d:	8d 76 00             	lea    0x0(%esi),%esi

00001440 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1440:	55                   	push   %ebp
    1441:	89 e5                	mov    %esp,%ebp
    1443:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
    1444:	31 ff                	xor    %edi,%edi
{
    1446:	56                   	push   %esi
    1447:	53                   	push   %ebx
    1448:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    144b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
    144e:	8d 45 10             	lea    0x10(%ebp),%eax
{
    1451:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
    1454:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    1457:	0f b6 13             	movzbl (%ebx),%edx
    145a:	83 c3 01             	add    $0x1,%ebx
    145d:	84 d2                	test   %dl,%dl
    145f:	75 39                	jne    149a <printf+0x5a>
    1461:	e9 c2 00 00 00       	jmp    1528 <printf+0xe8>
    1466:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1468:	83 fa 25             	cmp    $0x25,%edx
    146b:	0f 84 bf 00 00 00    	je     1530 <printf+0xf0>
  write(fd, &c, 1);
    1471:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1474:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    147b:	00 
    147c:	89 44 24 04          	mov    %eax,0x4(%esp)
    1480:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
    1483:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
    1486:	e8 77 fe ff ff       	call   1302 <write>
    148b:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
    148e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    1492:	84 d2                	test   %dl,%dl
    1494:	0f 84 8e 00 00 00    	je     1528 <printf+0xe8>
    if(state == 0){
    149a:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    149c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    149f:	74 c7                	je     1468 <printf+0x28>
      }
    } else if(state == '%'){
    14a1:	83 ff 25             	cmp    $0x25,%edi
    14a4:	75 e5                	jne    148b <printf+0x4b>
      if(c == 'd'){
    14a6:	83 fa 64             	cmp    $0x64,%edx
    14a9:	0f 84 31 01 00 00    	je     15e0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    14af:	25 f7 00 00 00       	and    $0xf7,%eax
    14b4:	83 f8 70             	cmp    $0x70,%eax
    14b7:	0f 84 83 00 00 00    	je     1540 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    14bd:	83 fa 73             	cmp    $0x73,%edx
    14c0:	0f 84 a2 00 00 00    	je     1568 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    14c6:	83 fa 63             	cmp    $0x63,%edx
    14c9:	0f 84 35 01 00 00    	je     1604 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    14cf:	83 fa 25             	cmp    $0x25,%edx
    14d2:	0f 84 e0 00 00 00    	je     15b8 <printf+0x178>
  write(fd, &c, 1);
    14d8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    14db:	83 c3 01             	add    $0x1,%ebx
    14de:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    14e5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    14e6:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    14e8:	89 44 24 04          	mov    %eax,0x4(%esp)
    14ec:	89 34 24             	mov    %esi,(%esp)
    14ef:	89 55 d0             	mov    %edx,-0x30(%ebp)
    14f2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    14f6:	e8 07 fe ff ff       	call   1302 <write>
        putc(fd, c);
    14fb:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
    14fe:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1501:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1508:	00 
    1509:	89 44 24 04          	mov    %eax,0x4(%esp)
    150d:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
    1510:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    1513:	e8 ea fd ff ff       	call   1302 <write>
  for(i = 0; fmt[i]; i++){
    1518:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    151c:	84 d2                	test   %dl,%dl
    151e:	0f 85 76 ff ff ff    	jne    149a <printf+0x5a>
    1524:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
    1528:	83 c4 3c             	add    $0x3c,%esp
    152b:	5b                   	pop    %ebx
    152c:	5e                   	pop    %esi
    152d:	5f                   	pop    %edi
    152e:	5d                   	pop    %ebp
    152f:	c3                   	ret    
        state = '%';
    1530:	bf 25 00 00 00       	mov    $0x25,%edi
    1535:	e9 51 ff ff ff       	jmp    148b <printf+0x4b>
    153a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    1540:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1543:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
    1548:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
    154a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1551:	8b 10                	mov    (%eax),%edx
    1553:	89 f0                	mov    %esi,%eax
    1555:	e8 46 fe ff ff       	call   13a0 <printint>
        ap++;
    155a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    155e:	e9 28 ff ff ff       	jmp    148b <printf+0x4b>
    1563:	90                   	nop
    1564:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    1568:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    156b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
    156f:	8b 38                	mov    (%eax),%edi
          s = "(null)";
    1571:	b8 82 18 00 00       	mov    $0x1882,%eax
    1576:	85 ff                	test   %edi,%edi
    1578:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    157b:	0f b6 07             	movzbl (%edi),%eax
    157e:	84 c0                	test   %al,%al
    1580:	74 2a                	je     15ac <printf+0x16c>
    1582:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1588:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    158b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
    158e:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
    1591:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1598:	00 
    1599:	89 44 24 04          	mov    %eax,0x4(%esp)
    159d:	89 34 24             	mov    %esi,(%esp)
    15a0:	e8 5d fd ff ff       	call   1302 <write>
        while(*s != 0){
    15a5:	0f b6 07             	movzbl (%edi),%eax
    15a8:	84 c0                	test   %al,%al
    15aa:	75 dc                	jne    1588 <printf+0x148>
      state = 0;
    15ac:	31 ff                	xor    %edi,%edi
    15ae:	e9 d8 fe ff ff       	jmp    148b <printf+0x4b>
    15b3:	90                   	nop
    15b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    15b8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
    15bb:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    15bd:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    15c4:	00 
    15c5:	89 44 24 04          	mov    %eax,0x4(%esp)
    15c9:	89 34 24             	mov    %esi,(%esp)
    15cc:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    15d0:	e8 2d fd ff ff       	call   1302 <write>
    15d5:	e9 b1 fe ff ff       	jmp    148b <printf+0x4b>
    15da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    15e0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    15e3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
    15e8:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
    15eb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15f2:	8b 10                	mov    (%eax),%edx
    15f4:	89 f0                	mov    %esi,%eax
    15f6:	e8 a5 fd ff ff       	call   13a0 <printint>
        ap++;
    15fb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    15ff:	e9 87 fe ff ff       	jmp    148b <printf+0x4b>
        putc(fd, *ap);
    1604:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
    1607:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
    1609:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    160b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1612:	00 
    1613:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
    1616:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    1619:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    161c:	89 44 24 04          	mov    %eax,0x4(%esp)
    1620:	e8 dd fc ff ff       	call   1302 <write>
        ap++;
    1625:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    1629:	e9 5d fe ff ff       	jmp    148b <printf+0x4b>
    162e:	66 90                	xchg   %ax,%ax

00001630 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1630:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1631:	a1 64 1b 00 00       	mov    0x1b64,%eax
{
    1636:	89 e5                	mov    %esp,%ebp
    1638:	57                   	push   %edi
    1639:	56                   	push   %esi
    163a:	53                   	push   %ebx
    163b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    163e:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
    1640:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1643:	39 d0                	cmp    %edx,%eax
    1645:	72 11                	jb     1658 <free+0x28>
    1647:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1648:	39 c8                	cmp    %ecx,%eax
    164a:	72 04                	jb     1650 <free+0x20>
    164c:	39 ca                	cmp    %ecx,%edx
    164e:	72 10                	jb     1660 <free+0x30>
    1650:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1652:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1654:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1656:	73 f0                	jae    1648 <free+0x18>
    1658:	39 ca                	cmp    %ecx,%edx
    165a:	72 04                	jb     1660 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    165c:	39 c8                	cmp    %ecx,%eax
    165e:	72 f0                	jb     1650 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1660:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1663:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    1666:	39 cf                	cmp    %ecx,%edi
    1668:	74 1e                	je     1688 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    166a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    166d:	8b 48 04             	mov    0x4(%eax),%ecx
    1670:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    1673:	39 f2                	cmp    %esi,%edx
    1675:	74 28                	je     169f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    1677:	89 10                	mov    %edx,(%eax)
  freep = p;
    1679:	a3 64 1b 00 00       	mov    %eax,0x1b64
}
    167e:	5b                   	pop    %ebx
    167f:	5e                   	pop    %esi
    1680:	5f                   	pop    %edi
    1681:	5d                   	pop    %ebp
    1682:	c3                   	ret    
    1683:	90                   	nop
    1684:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    1688:	03 71 04             	add    0x4(%ecx),%esi
    168b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    168e:	8b 08                	mov    (%eax),%ecx
    1690:	8b 09                	mov    (%ecx),%ecx
    1692:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1695:	8b 48 04             	mov    0x4(%eax),%ecx
    1698:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    169b:	39 f2                	cmp    %esi,%edx
    169d:	75 d8                	jne    1677 <free+0x47>
    p->s.size += bp->s.size;
    169f:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
    16a2:	a3 64 1b 00 00       	mov    %eax,0x1b64
    p->s.size += bp->s.size;
    16a7:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    16aa:	8b 53 f8             	mov    -0x8(%ebx),%edx
    16ad:	89 10                	mov    %edx,(%eax)
}
    16af:	5b                   	pop    %ebx
    16b0:	5e                   	pop    %esi
    16b1:	5f                   	pop    %edi
    16b2:	5d                   	pop    %ebp
    16b3:	c3                   	ret    
    16b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    16ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000016c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    16c0:	55                   	push   %ebp
    16c1:	89 e5                	mov    %esp,%ebp
    16c3:	57                   	push   %edi
    16c4:	56                   	push   %esi
    16c5:	53                   	push   %ebx
    16c6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    16c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    16cc:	8b 1d 64 1b 00 00    	mov    0x1b64,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    16d2:	8d 48 07             	lea    0x7(%eax),%ecx
    16d5:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    16d8:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    16da:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    16dd:	0f 84 9b 00 00 00    	je     177e <malloc+0xbe>
    16e3:	8b 13                	mov    (%ebx),%edx
    16e5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    16e8:	39 fe                	cmp    %edi,%esi
    16ea:	76 64                	jbe    1750 <malloc+0x90>
    16ec:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
    16f3:	bb 00 80 00 00       	mov    $0x8000,%ebx
    16f8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    16fb:	eb 0e                	jmp    170b <malloc+0x4b>
    16fd:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1700:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    1702:	8b 78 04             	mov    0x4(%eax),%edi
    1705:	39 fe                	cmp    %edi,%esi
    1707:	76 4f                	jbe    1758 <malloc+0x98>
    1709:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    170b:	3b 15 64 1b 00 00    	cmp    0x1b64,%edx
    1711:	75 ed                	jne    1700 <malloc+0x40>
  if(nu < 4096)
    1713:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1716:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    171c:	bf 00 10 00 00       	mov    $0x1000,%edi
    1721:	0f 43 fe             	cmovae %esi,%edi
    1724:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
    1727:	89 04 24             	mov    %eax,(%esp)
    172a:	e8 3b fc ff ff       	call   136a <sbrk>
  if(p == (char*)-1)
    172f:	83 f8 ff             	cmp    $0xffffffff,%eax
    1732:	74 18                	je     174c <malloc+0x8c>
  hp->s.size = nu;
    1734:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    1737:	83 c0 08             	add    $0x8,%eax
    173a:	89 04 24             	mov    %eax,(%esp)
    173d:	e8 ee fe ff ff       	call   1630 <free>
  return freep;
    1742:	8b 15 64 1b 00 00    	mov    0x1b64,%edx
      if((p = morecore(nunits)) == 0)
    1748:	85 d2                	test   %edx,%edx
    174a:	75 b4                	jne    1700 <malloc+0x40>
        return 0;
    174c:	31 c0                	xor    %eax,%eax
    174e:	eb 20                	jmp    1770 <malloc+0xb0>
    if(p->s.size >= nunits){
    1750:	89 d0                	mov    %edx,%eax
    1752:	89 da                	mov    %ebx,%edx
    1754:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1758:	39 fe                	cmp    %edi,%esi
    175a:	74 1c                	je     1778 <malloc+0xb8>
        p->s.size -= nunits;
    175c:	29 f7                	sub    %esi,%edi
    175e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    1761:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    1764:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    1767:	89 15 64 1b 00 00    	mov    %edx,0x1b64
      return (void*)(p + 1);
    176d:	83 c0 08             	add    $0x8,%eax
  }
}
    1770:	83 c4 1c             	add    $0x1c,%esp
    1773:	5b                   	pop    %ebx
    1774:	5e                   	pop    %esi
    1775:	5f                   	pop    %edi
    1776:	5d                   	pop    %ebp
    1777:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
    1778:	8b 08                	mov    (%eax),%ecx
    177a:	89 0a                	mov    %ecx,(%edx)
    177c:	eb e9                	jmp    1767 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
    177e:	c7 05 64 1b 00 00 68 	movl   $0x1b68,0x1b64
    1785:	1b 00 00 
    base.s.size = 0;
    1788:	ba 68 1b 00 00       	mov    $0x1b68,%edx
    base.s.ptr = freep = prevp = &base;
    178d:	c7 05 68 1b 00 00 68 	movl   $0x1b68,0x1b68
    1794:	1b 00 00 
    base.s.size = 0;
    1797:	c7 05 6c 1b 00 00 00 	movl   $0x0,0x1b6c
    179e:	00 00 00 
    17a1:	e9 46 ff ff ff       	jmp    16ec <malloc+0x2c>
    17a6:	66 90                	xchg   %ax,%ax
    17a8:	66 90                	xchg   %ax,%ax
    17aa:	66 90                	xchg   %ax,%ax
    17ac:	66 90                	xchg   %ax,%ax
    17ae:	66 90                	xchg   %ax,%ax

000017b0 <uacquire>:
#include "uspinlock.h"
#include "x86.h"

void
uacquire(struct uspinlock *lk)
{
    17b0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    17b1:	b9 01 00 00 00       	mov    $0x1,%ecx
    17b6:	89 e5                	mov    %esp,%ebp
    17b8:	8b 55 08             	mov    0x8(%ebp),%edx
    17bb:	90                   	nop
    17bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    17c0:	89 c8                	mov    %ecx,%eax
    17c2:	f0 87 02             	lock xchg %eax,(%edx)
  // The xchg is atomic.
  while(xchg(&lk->locked, 1) != 0)
    17c5:	85 c0                	test   %eax,%eax
    17c7:	75 f7                	jne    17c0 <uacquire+0x10>
    ;

  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that the critical section's memory
  // references happen after the lock is acquired.
  __sync_synchronize();
    17c9:	0f ae f0             	mfence 
}
    17cc:	5d                   	pop    %ebp
    17cd:	c3                   	ret    
    17ce:	66 90                	xchg   %ax,%ax

000017d0 <urelease>:

void urelease (struct uspinlock *lk) {
    17d0:	55                   	push   %ebp
    17d1:	89 e5                	mov    %esp,%ebp
    17d3:	8b 45 08             	mov    0x8(%ebp),%eax
  __sync_synchronize();
    17d6:	0f ae f0             	mfence 

  // Release the lock, equivalent to lk->locked = 0.
  // This code can't use a C assignment, since it might
  // not be atomic. A real OS would use C atomics here.
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
    17d9:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    17df:	5d                   	pop    %ebp
    17e0:	c3                   	ret    
